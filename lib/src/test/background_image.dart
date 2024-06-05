import 'package:flutter/material.dart';

import '../components/start_screen.dart';

class BackgroundImageScreen extends StatelessWidget {
  const BackgroundImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: FontStyleCustom.mainColorScreen,
        body: Stack(
          children: [
            Positioned(
              top: -20.0,
              left: 0.0,
              right: 0.0,
              bottom: 0.0, 
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/ba.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
