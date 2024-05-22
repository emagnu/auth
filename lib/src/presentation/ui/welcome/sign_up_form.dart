//  //  ///
//  Import LIBRARIES
import 'package:auth/src/presentation/ui/sharedwidgets/styled_button.dart';
import 'package:auth/src/presentation/ui/sharedwidgets/styled_text.dart';
import 'package:flutter/material.dart';
//  Import FILES
//  //  ///

class SignUpForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emaiController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //  Intro test
            const Center(
              child: StyledBodyText('Sign-up for a new accunt.'),
            ),
            const SizedBox(height: 16.0),

            //  Email address
            TextFormField(
              controller: _emaiController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: 'Email'),
              // validator: (value) {if (value == null || value.isEmpty) {return 'Please enter a username';}return null;},
            ),
            const SizedBox(height: 16.0),

            //  Password
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
              // validator: (value) {if (value == null || value.isEmpty) {return 'Please enter a username';}return null;},
            ),
            const SizedBox(height: 16.0),

            //  Error feedback

            //  Submit button
            StyledButton(
              onPressed: () async {},
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
