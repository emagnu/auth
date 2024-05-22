//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//  Import FILES
import 'firebase_options.dart';
import 'src/presentation/ui/screes/welcome_screen.dart';
//  //  ///

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

