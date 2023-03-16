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
                  image: DecorationImage(
                    image: NetworkImage("https://images.unsplash.com/photo-1556767576-5ec41e3239ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80"),
                    fit: BoxFit.cover),),

            ),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 15,bottom: 11,top: 11,right: 15),
                hintText: "phone number"),),),
            ElevatedButton(
              onPressed: (){}, child: Text("Send OTP")
              ),
            SizedBox(height: 20,)
           ],)
          ],
        ));
  }
}
