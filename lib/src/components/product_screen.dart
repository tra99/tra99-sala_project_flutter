import 'package:flutter/material.dart';
import 'package:flutter_project/src/components/start_screen.dart';

class ProductCardList extends StatefulWidget {
  const ProductCardList({super.key});

  @override
  State<ProductCardList> createState() => _ProductCardListState();
}

class _ProductCardListState extends State<ProductCardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 6,
            margin: const EdgeInsets.all(12),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), 
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/p1.png"),
                      const Text(
                        "3CE Hazy Lip Clay",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.arrow_forward_ios, size: 20),
                      const SizedBox(height: 4,),
                      const Text(
                        "x 2",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "\$13",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "Completed",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1, color: FontStyleCustom.mainColorScreen)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text(
                            "RE-ORDER",
                            style: TextStyle(color: FontStyleCustom.mainColorScreen),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Card(
            elevation: 6,
            margin: const EdgeInsets.all(12),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), 
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/p2.png"),
                      const Text(
                        "3CE Hazy Lip Clay",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.arrow_forward_ios, size: 20),
                      const SizedBox(height: 4,),
                      const Text(
                        "x 2",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "\$13",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "Completed",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1, color: FontStyleCustom.mainColorScreen)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text(
                            "RE-ORDER",
                            style: TextStyle(color: FontStyleCustom.mainColorScreen),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Card(
            elevation: 6,
            margin: const EdgeInsets.all(12),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), 
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/p3.png"),
                      const Text(
                        "3CE Hazy Lip Clay",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.arrow_forward_ios, size: 20),
                      const SizedBox(height: 4,),
                      const Text(
                        "x 2",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "\$13",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "Completed",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1, color: FontStyleCustom.mainColorScreen)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text(
                            "RE-ORDER",
                            style: TextStyle(color: FontStyleCustom.mainColorScreen),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Card(
            elevation: 6,
            margin: const EdgeInsets.all(12),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), 
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/p4.png"),
                      const Text(
                        "3CE Hazy Lip Clay",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.arrow_forward_ios, size: 20),
                      const SizedBox(height: 4,),
                      const Text(
                        "x 2",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "\$13",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4,),
                      const Text(
                        "Completed",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                width: 1, color: FontStyleCustom.mainColorScreen)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text(
                            "RE-ORDER",
                            style: TextStyle(color: FontStyleCustom.mainColorScreen),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
               
        ],
      ),
    );
  }
}