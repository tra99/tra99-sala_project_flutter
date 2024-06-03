import 'package:flutter/material.dart';
import 'package:flutter_project/src/components/button.dart';
import 'package:flutter_project/src/components/start_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FontStyleCustom.mainColorScreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/ba.png"),
            Stack(
              children: [Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height*30,
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Positioned(
                  height: 200,
                  child: Column(
                    children: [
                      const Text("Everything is There For Your Beauty Needs"),
                      const Text("Safe care is not a luxury. It is necessity"),
                      CustomButton(text: "Next", onPressed: (){})
                    ],
                  ),
                ),
              ),
              ]
            )
          ],
        ),
      ),
    );
  }
}