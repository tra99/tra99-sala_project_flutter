import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project/src/components/start_screen.dart';
import '../views/start_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const StartScreen()));
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: FontStyleCustom.mainColorScreen,
      body: Center(
        child: Image(image: AssetImage("assets/images/Aura_logo.png"),width: 200,height: 200,),
      ),
    );
  }
}