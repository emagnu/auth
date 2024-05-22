//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//  Import FILES
import '../sharedwidgets/styled_text.dart';
import '../welcome/sign_in_form.dart';
import '../welcome/sign_up_form.dart';
//  //  ///

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isSignUpForm = true;

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

              if (isSignUpForm)
                Column(
                  children: <Widget>[
                    // Sign up screen
                    SignUpForm(),
                    const StyledBodyText('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isSignUpForm = false;
                        });
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
              if (!isSignUpForm)
                Column(
                  children: <Widget>[
                    // Sign up screen
                    SignInForm(),
                    const StyledBodyText('Do you need an account?'),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isSignUpForm = true;
                        });
                      },
                      child: Text(
                        'Sign-up instead',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
