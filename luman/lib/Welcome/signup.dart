import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:luman/Pages/homepageentry.dart';
import 'package:luman/Welcome/buttons.dart';
import 'package:luman/Backgrounds/mainloginbg.dart';
import 'package:luman/Welcome/loginentry.dart';
import 'package:luman/Welcome/signupentry.dart';
import 'package:luman/constants.dart';
import 'package:luman/Welcome/input_field.dart';
import 'package:luman/Welcome/password_field.dart';
import 'package:luman/Welcome/email_field.dart';
import 'package:luman/Welcome/accountchecker.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

/// Entrypoint example for registering via Email/Password.
class RegisterPage extends StatefulWidget {
  /// The page title.
  final String title = 'Registration';

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _success = false;
  String Username = "";
  String Password = "";
  String Email = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Background(
        //padding: const EdgeInsets.all(16),
        innerPage: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.25),
              RoundedInputField(
                hintText: "Username",
                onChanged: (text) {
                  Username = text;
                },
              ),
              RoundedemailField(
                hintText: "Email",
                onChanged: (value) {
                  Email = value;
                },
              ),
              RoundedPasswordField(
                onChanged: (text) {
                  Password = text;
                },
              ),
              RoundedButton(
                text: "Sign Up",
                textColor: Colors.black,
                color: kWhite,
                press: () async {
                  if (_formKey.currentState!.validate()) {
                    await _register();
                  }
                  _success //upon successful registration
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage(
                                username:
                                    Username, //pass the user name into the entry page
                              );
                            },
                          ),
                        )
                      : showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text('Invalid Sign Up!'),
                            content: Text(
                                "Please provide a valid Email and a min of 6 character password"),
                          ),
                        );
                },
              ),
              SizedBox(height: size.height * 0.03),
              VerifyAccount(
                login:
                    false, //default is true = need to send him to sign up thats why we in login page
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    super.dispose();
  }

  // Example code for registration.
  Future<void> _register() async {
    try {
      final User? user = (await _auth.createUserWithEmailAndPassword(
        email: Email,
        password: Password,
      ))
          .user;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${user!.email} signed up successfully')));
      _success = true;
    } catch (e) {
      _success = false;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Failed to sign up!')));
    }
  }
}
