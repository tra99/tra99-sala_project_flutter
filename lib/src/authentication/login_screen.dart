import 'package:flutter/material.dart';
import 'package:flutter_project/src/authentication/register.dart';
import 'package:flutter_project/src/components/button.dart';
import 'package:flutter_project/src/components/start_screen.dart';
import 'package:flutter_project/src/views/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: FontStyleCustom.mainColorScreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 100), // Add some top padding to center the logo and text
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
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
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
                      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
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
                            height: 30,
                          ),
                          CustomButton(
                            text: "Login",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomeScreen()));
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Does not have an account? ",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500)),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                                },
                                child: const Text(
                                  "Create Account ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 253, 173, 162)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20), 
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
