import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavigationBar extends StatelessWidget {
  void Function(int) ontapChange;
  MyNavigationBar({required this.ontapChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: GNav(
        onTabChange: (value) => ontapChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade700,
        tabBackgroundColor: Colors.grey.shade300,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(
            icon: Icons.home,
            iconColor: Colors.black,
            text: "Shop",
            textSize: 30,
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            iconColor: Colors.black,
            text: "Cart",
          )
        ],
      ),
    );
  }
}
