import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, color]
    ["1L Packing Mustard Oil", "100", "assets/a.jpg", Colors.green],
    ["10L Packing Mustard Oil", "101", "assets/a.jpg", Colors.green],
    ["1L Packing Mustard Oil", "110", "assets/a.jpg", Colors.green],
    ["1L Packing Mustard Oil", "103", "assets/a.jpg", Colors.green],
  ];

  //list of cart items
  List _cartItems = [];
  get shopItem => _shopItems;
  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
