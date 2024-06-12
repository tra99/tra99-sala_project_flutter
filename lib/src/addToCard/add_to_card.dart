import 'package:flutter/material.dart';
import 'package:flutter_project/src/components/button.dart';
import 'package:flutter_project/src/components/start_screen.dart';
import 'package:flutter_project/src/payments/payment.dart';
import 'package:flutter_project/src/views/home_screen.dart';

class AddToCardScreen extends StatefulWidget {
  const AddToCardScreen({super.key});

  @override
  State<AddToCardScreen> createState() => _AddToCardScreenState();
}

class _AddToCardScreenState extends State<AddToCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomeScreen()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: FontStyleCustom.mainColorScreen,
          ),
        ),
        title: const Text(
          "Card",
          style: TextStyle(
              color: FontStyleCustom.mainColorScreen,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(
              Icons.delete_outline,
              color: FontStyleCustom.mainColorScreen,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(),
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/p1.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "3CE Hazy Lip Clay",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // const Text("",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("\$13"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Color: DAFFODIL",
                      style:
                          TextStyle(color: Color.fromARGB(255, 116, 116, 116)),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(bottom: 14),
                              child: const Icon(
                                Icons.minimize,
                                color: Colors.black,
                                size: 28,
                              )),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text("1"),
                          const SizedBox(
                            width: 16,
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 28,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 2,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(),
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/p2.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "3CE Hazy Lip Clay",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // const Text("",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("\$13"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Color: DAFFODIL",
                      style:
                          TextStyle(color: Color.fromARGB(255, 116, 116, 116)),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(bottom: 14),
                              child: const Icon(
                                Icons.minimize,
                                color: Colors.black,
                                size: 28,
                              )),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text("1"),
                          const SizedBox(
                            width: 16,
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 28,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 2,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(),
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/p3.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "3CE Hazy Lip Clay",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // const Text("",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("\$13"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Color: DAFFODIL",
                      style:
                          TextStyle(color: Color.fromARGB(255, 116, 116, 116)),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(bottom: 14),
                              child: const Icon(
                                Icons.minimize,
                                color: Colors.black,
                                size: 28,
                              )),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text("1"),
                          const SizedBox(
                            width: 16,
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 28,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text("\$35.00",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: CustomButton(text: "Checkout", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentScreen()));
            }),
          )
        ],
      ),
    );
  }
}
