import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:luman/Welcome/welcomeentry.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Luman',
      theme: ThemeData(
        primaryColor: Color(0xFFF1E6FF),
        scaffoldBackgroundColor: Colors.pink[100],
      ),
      home: WelcomeScreen(),
      /*
      home: FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            print("Error");
            return Text("something went wrong");
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return WelcomeScreen();
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return CircularProgressIndicator();
        },
      ),
      */
    );
  }
}
