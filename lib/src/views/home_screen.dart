import 'package:flutter/material.dart';
import 'package:flutter_project/src/components/button.dart';
import 'package:flutter_project/src/components/start_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isFavorited = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FontStyleCustom.mainColorScreen,
        // title: Text('My Home Screen'),  // Added a title
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/Adelen.png",width: 70,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              // Add a child to the container, if needed
              // child: Icon(Icons.person, color: Colors.blue),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for product',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 245, 244, 244),
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          TabBar(
            controller: _tabController,
            labelColor: Colors.pinkAccent,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide.none, 
            ),
            tabs: const [
              Tab(text: 'Popular'),
              Tab(text: 'Lipstick'),
              Tab(text: 'Cleanser'),
              Tab(text: 'Toner'),
            ],
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/p${index + 1}.png',
                          // fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Product Name', style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('${(index + 1) * 10} \$', style: const TextStyle(color: Colors.grey)),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                icon: Icon(
                                  _isFavorited ? Icons.favorite : Icons.favorite_border,
                                  color: _isFavorited ? Colors.red : Colors.black, 
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isFavorited = !_isFavorited; 
                                  });
                              }
                            )
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: const Color.fromARGB(255, 48, 48, 48),
      ),
    );
  }
}