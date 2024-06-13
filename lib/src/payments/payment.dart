import 'package:flutter/material.dart';
import 'package:flutter_project/src/addToCard/add_to_card.dart';
import 'package:flutter_project/src/components/button.dart';
import 'package:flutter_project/src/components/start_screen.dart';
import 'package:flutter_project/src/views/home_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

enum SingingCharacter { Credit, Paypal, Bitcoin }

class _PaymentScreenState extends State<PaymentScreen> {
  SingingCharacter? _character = SingingCharacter.Credit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddToCardScreen()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: FontStyleCustom.mainColorScreen,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Checkout",
          style: TextStyle(
              color: FontStyleCustom.mainColorScreen,
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 80),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Shipping Information", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Username    +885 78482207"),
                          Text("Trail, Sangkat Krang Thnong, Khan Saensok"),
                          Text("Phnom Penh, Cambodia, 120804"),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Payment", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset("assets/images/masterCard.png"),
                      const SizedBox(width: 10),
                      const Text('Master Card'),
                    ],
                  ),
                  trailing: Radio<SingingCharacter>(
                    activeColor: Colors.black,
                    value: SingingCharacter.Credit,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset("assets/images/paypal.png"),
                      const SizedBox(width: 10),
                      const Text('Paypal'),
                    ],
                  ),
                  trailing: Radio<SingingCharacter>(
                    activeColor: Colors.black,
                    value: SingingCharacter.Paypal,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset("assets/images/bitcoin.png"),
                      const SizedBox(width: 10),
                      const Text('Bitcoin'),
                    ],
                  ),
                  trailing: Radio<SingingCharacter>(
                    activeColor: Colors.black,
                    value: SingingCharacter.Bitcoin,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 14, right: 36, top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.more_horiz),
                          SizedBox(width: 10),
                          Text("More methods"),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("\$35.00", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  CustomButton(text: "Pay", onPressed: () {
                    _dialogBuilder(context);
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          contentPadding: const EdgeInsets.all(20.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 60.0,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Payment Success!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Divider(),
              const SizedBox(height: 10.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'IDR 1,000,000',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '12-12-2024',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              CustomButton(text: "Done", onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomeScreen()));
              })
            ],
          ),
        );
      },
    );
  }


}
