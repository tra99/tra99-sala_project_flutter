import 'package:flutter/material.dart';
import 'package:flutter_project/src/splashscreen/splash_screen.dart';
import 'package:flutter_project/src/views/home_screen.dart';
import 'package:flutter_project/src/views/language_screen.dart';
import 'package:flutter_project/src/views/start_screen.dart';

import 'src/authentication/register.dart';
import 'src/test/date_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen()
    );
  }
}
