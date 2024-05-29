import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyButtomNavBar({super.key , required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
            color: Colors.grey[400],
            activeColor: Colors.grey.shade700,
            tabBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade100,
            mainAxisAlignment: MainAxisAlignment.center,
            onTabChange: (value) => onTabChange!(value),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Shop',
              ),
              GButton(
                icon: Icons.shopping_bag_rounded,
                text: 'Cart',
              ),
            ]),
      ),
    );
  }
}
