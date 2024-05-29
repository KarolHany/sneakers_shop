import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/components/cart_item.dart';
import 'package:sneakers_shop/models/cart.dart';
import 'package:sneakers_shop/models/shoo.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "My Cart",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
              Shoo individualShoe = value.getUserCart()[index];
              return CartItem(
                shoe: individualShoe,
              );
            },
          )),

          
        ],
      ),
    );
  }
}
