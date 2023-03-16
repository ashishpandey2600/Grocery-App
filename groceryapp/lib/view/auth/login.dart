import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1556767576-5ec41e3239ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80"))),
            )
          ],
        ));
  }
}
