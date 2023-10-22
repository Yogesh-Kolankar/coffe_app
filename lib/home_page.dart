import 'package:coffe_app/navigationa_bar.dart';
import 'package:coffe_app/pages/cartpage.dart';
import 'package:coffe_app/pages/shoppage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedTab = 0;
  void navigateBottamBar(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  HomePageState();

  List pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text("Coffie App"),
      ),
      bottomNavigationBar: MyNavigationBar(
        ontapChange: (index) {
          navigateBottamBar(index);
        },
      ),
      body: pages[selectedTab],
    );
  }
}
