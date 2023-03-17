

import 'package:flutter/material.dart';

import 'package:groceryapp/model/cart_model.dart';
import 'package:provider/provider.dart';

import '../../controller/groceryitemtile.dart';
import 'cartpage.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartPage()));
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          //good morning
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text("Good Morning"),
          ),

          SizedBox(
            height: 20,
          ),
          //Let's Order Oil
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Let's order freash items for you",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          // Divider
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),

          SizedBox(
            height: 24,
          ),
          //Fresh items + grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Fresh Items",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(child: Consumer<CartModel>(
            builder: (context, value, child) {
              return GridView.builder(
                  itemCount: value.shopItem.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItem[index][0],
                      itemPrice: value.shopItem[index][1],
                      imagePath: value.shopItem[index][2],
                      color: value.shopItem[index][3],
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false)
                            .addItemToCart(index);
                      },
                    );
                  });
            },
          ))
        ]),
      ),
    );
  }
}
