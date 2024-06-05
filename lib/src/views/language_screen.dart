import 'package:flutter/material.dart';
import 'package:flutter_project/src/authentication/login_screen.dart';
import 'package:flutter_project/src/components/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FontStyleCustom.mainColorScreen,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Aura_logo.png",width: 200,height: 200,),
          const SizedBox(height: 50,),
          const Text("សូមជ្រើសរើសភាសា",style: FontStyleCustom.thirdFontColor,),
          const SizedBox(height: 10,),
          const Text("Please choose a langauge",style: FontStyleCustom.thirdFontColor,),
          const SizedBox(height: 40,),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
            },
            child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/kh.png"),
                  const SizedBox(width: 20,),
                  Text("ភាសាខ្មែរ",style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                  ),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
            },
            child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/En.png"),
                  const SizedBox(width: 20,),
                  const Text("English",),
                ],
              ),
            ),
          ),
          Container(
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Image.asset("assets/images/En.png"),
            //     const Text("English"),
            //   ],
            // ),
          )
        ],
      ),
    );
  }
}