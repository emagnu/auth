//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//  Import FILES
import '../sharedwidgets/styled_text.dart';
import '../welcome/sign_in_form.dart';
import '../welcome/sign_up_form.dart';
//  //  ///

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSignUpForm = true;

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

              if (isSignUpForm)
                Column(
                  children: <Widget>[
                    // Sign up screen
                    SignUpForm(),
                    const StyledBodyText('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        isSignUpForm = false;
                      },
                      child: Text(
                        'Sign-in instead',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),

              // Sign in screen
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
