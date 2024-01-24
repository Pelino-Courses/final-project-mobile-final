import 'package:flutter/material.dart';
import 'package:work/MyHomepage.dart';
import 'package:work/screens/FirstPage.dart';
// import 'package:work/screens/LoginPage.dart';
// import 'package:work/screens/RecoverPage.dart';
// import 'package:work/screens/SignUpPage.dart';
// import 'package:work/screens/VerificationPage.dart';
// import 'package:work/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech Me',
      theme: ThemeData( 
        primaryColor: Colors.red,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}

