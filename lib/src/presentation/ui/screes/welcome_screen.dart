//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../sharedwidgets/styled_text.dart';
import '../welcome/sign_in_form.dart';
import '../welcome/sign_up_form.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const StyledHeadingText('Welcome to the authorisation page '),

              // Sign up screen
              SignUpForm(),

              // Sign in screen
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
