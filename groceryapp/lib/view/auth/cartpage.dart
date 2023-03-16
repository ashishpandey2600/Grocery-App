import 'package:flutter/material.dart';
import 'package:groceryapp/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My Cart")),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Image.asset(value.cartItems[index][2],
                      height: 36,
                      ),
                      title: Text(value.cartItems[index][0],
                      ),
                      subtitle: Text('₹'+value.cartItems[index][1]),
                      trailing: IconButton(icon: Icon(Icons.cancel),
                      onPressed:()=>
                       Provider.of<CartModel>(
                        context, listen: false
                        ).removeItemFromCart(index),),
                    ),
                  ),
                );
              },
              ),
              ),
              //total price + paynow
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.green,
                  borderRadius: BorderRadius.circular(12)),
                  
                  padding: EdgeInsets.all(24),
                  child: Row(children: [
                   Column(
                    children: [
                      Text("Total Price",
                      style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 4,),
                      Text('₹'+value.calculateTotal(),
                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                   )

                  ],),
                ),
              )

            ]);
          },
        ));
  }
}
