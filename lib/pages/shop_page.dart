// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/components/shoo_widget_page.dart';
import 'package:sneakers_shop/models/cart.dart';
import 'package:sneakers_shop/models/shoo.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoo shoe) {
    Provider.of<Cart>(context, listen: false).additionItemToCart(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Succecfully Added!"),
        content: Text("Check your Cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Everyone Flies ... Some Fly Longer Than Others",
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(
                  width: 100,
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoo shoe = value.getShoeList()[index];
              return ShooWidget(
                shoo: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },
          )),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
