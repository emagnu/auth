//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  //  ///

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Auth'),
        backgroundColor: Colors.indigo[500],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // StyleHeading('Welcome to Flutter Auth'),
              // Sign up screen
              // Sign in screen
            ],
          ),
        ),
      ),
    );
  }
}
