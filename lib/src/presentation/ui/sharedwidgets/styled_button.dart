//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//  Import FILES
//  //  ///

class StyledButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;

  const StyledButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.indigo[500],
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        onPressed: onPressed,
        child: child);
  }
}
