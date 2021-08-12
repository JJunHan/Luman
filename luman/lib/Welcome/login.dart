import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:luman/Backgrounds/mainloginbg.dart';
import 'package:luman/Pages/homepageentry.dart';
import 'package:luman/Welcome/accountchecker.dart';
import 'package:luman/Welcome/buttons.dart';
import 'package:luman/Welcome/email_field.dart';
import 'package:luman/Welcome/input_field.dart';
import 'package:luman/Welcome/password_field.dart';
import 'package:luman/Welcome/signupentry.dart';
import 'package:luman/constants.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class EmailPasswordForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EmailPasswordFormState();
}

class EmailPasswordFormState extends State<EmailPasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String Username = "";
  String Password = "";
  String Email = "";
  bool login = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //return Background(
    //innerPage: true,
    //child: SingleChildScrollView(
    //child: Column(
    //mainAxisAlignment: MainAxisAlignment.center,
    //children: <Widget>[
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
                  text: "Login",
                  textColor: Colors.black,
                  color: kWhite,
                  press: () async {
                    if (_formKey.currentState!.validate()) {
                      await _signInWithEmailAndPassword();
                    }
                    login
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage(
                                  username:
                                      Username, //pass the user name into the entry page
                                ); //call login.dart
                              },
                            ),
                          )
                        : showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Invalid Credentials'),
                              content: Text(
                                  "Failed to sign in with Email & Password"),
                            ),
                          );
                  },
                ),
                SizedBox(height: size.height * 0.03),
                VerifyAccount(
                  login:
                      true, //default is true = need to send him to sign up thats why we in login page
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
    //],
    //),
    //),
    //);
  }

  @override
  void dispose() {
    super.dispose();
  }

  // SIGN OUT
  Future<void> _signOut() async {
    await _auth.signOut();
  }

  // Hw to sign in with email and password.
  Future<void> _signInWithEmailAndPassword() async {
    try {
      final User? user = (await _auth.signInWithEmailAndPassword(
        email: Email,
        password: Password,
      ))
          .user;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${user!.email} signed in')));
      login = true;
    } catch (e) {
      login = false;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to sign in with Email & Password')));
    }
  }
}
