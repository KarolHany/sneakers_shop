import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/models/cart.dart';
import 'package:sneakers_shop/models/shoo.dart';

class CartItem extends StatefulWidget {
  Shoo shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
          leading: Image.asset(widget.shoe.image),
          title: Text(widget.shoe.name),
          subtitle: Text("\$" + widget.shoe.price),
          trailing: IconButton(
              onPressed: () => removeItemFromCart(), icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
