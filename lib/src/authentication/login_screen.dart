import 'package:flutter/material.dart';
import 'package:flutter_project/src/components/button.dart';
import 'package:flutter_project/src/components/start_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FontStyleCustom.mainColorScreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Aura_logo.png",
              width: 200,
            ),
            const Text(
              "Log in your account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Username"),
                        SizedBox(
                          height: 14,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            hintText: 'sreylen',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Password"),
                        const SizedBox(
                          height: 14,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            hintText: 'Password.....',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: FontStyleCustom.mainColorScreen,
                            ),
                            suffixIcon: Icon(Icons.remove_red_eye_sharp),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 94, 93, 93)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          text: "Does not have account? ",
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text("Does not have account? ", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                            Text("Create Account ",style: TextStyle(color: Color.fromARGB(255, 253, 173, 162)),)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
