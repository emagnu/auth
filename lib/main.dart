//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'src/presentation/ui/screes/welcome_screen.dart';
//  //  ///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}



//  //  ///
//  Import LIBRARIES
//  Import FILES
//  //  ///

