import 'package:flutter/material.dart';


import 'pagehome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 80, bottom: 80, top: 160),
          child: Image.asset("assets/a.jpg"),
        ),
      const  Text(
          "1L Package",
          textAlign: TextAlign.center,
          style:
             TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          "Fresh items everyday",
          style: TextStyle(color: Colors.grey[600]),
        ),
        const Spacer(),
        //get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return PageHome();
          })),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20),
            ),
            padding:const EdgeInsets.all(24),
            child:const Text(
              "Get Started",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}
