//  //  ///
//  Import LIBRARIES
import 'package:auth/src/application/services/auth_service.dart';
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),

            //  Password
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                if (value.length < 8) {
                  return 'Password must be at least 8 characters long';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),

            //  Error feedback

            //  Submit button
            StyledButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  debugPrint(_emaiController.text);
                  debugPrint(_passwordController.text);
                  final user = await AuthService.signUp(
                      _emaiController.text.trim(),
                      _passwordController.text.trim());
                }
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
