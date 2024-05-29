import 'package:flutter/material.dart';
import 'package:sneakers_shop/components/buttom_nav_bar.dart';
import 'package:sneakers_shop/pages/cart_page.dart';
import 'package:sneakers_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numOfWidget = 0;

  void navigateButtom(int value) {
    setState(() {
      _numOfWidget = value;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  "lib/images/nike.png",
                  color: Colors.white,
                )),
                const Padding(
                  padding:  EdgeInsets.only(left: 25, bottom: 10),
                  child:  ListTile(
                    
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "H O M E",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 25),
                  child:  ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      "A B O U T",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 25, bottom: 25),
              child:  ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "L O G O U T",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: _pages[_numOfWidget],
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigateButtom(index),
      ),
    );
  }
}
