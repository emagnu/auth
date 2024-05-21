//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../sharedwidgets/styled_text.dart';
//  //  ///

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledAppBarText('Your Profile'),
        backgroundColor: Colors.indigo[500],
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        // child: Column(crossAxisAlignment: CrossAxisAlignment.start, ),
      ),
    );
  }
}
