import 'package:flutter/material.dart';
import 'package:sneakers_shop/models/shoo.dart';

class Cart extends ChangeNotifier {
  List<Shoo> shoeShop = [
    Shoo(
        name: "Nike Black Pink ",
        price: "126",
        image: "lib/images/nike1.jpeg",
        describtion:
            "The Nike Black Pink is a trendy lifestyle sneaker that combines comfort with striking style. "),
    Shoo(
        name: "Nike Black Brawn",
        price: "200",
        image: "lib/images/nike2.jpeg",
        describtion:
            "the Nike Black Brawn is a versatile option for both casual and stylish outfits."),
    Shoo(
        name: "Nike Black White",
        price: "154",
        image: "lib/images/nike3.jpeg",
        describtion:
            "the Nike Black White A classic sneaker with a streetwear vibe."),
    Shoo(
        name: "Nike Black OffWhite",
        price: "230",
        image: "lib/images/nike4.jpeg",
        describtion:
            "the Nike Black OffWhite color giving the shoes a sleek, versatile appearance. The design includes white accents.")
  ];

  List<Shoo> userCart = [];

  List<Shoo> getShoeList() {
    return shoeShop;
  }

  List<Shoo> getUserCart() {
    return userCart;
  }

  void additionItemToCart(Shoo shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoo shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
