import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover
           ),
           SizedBox(
             height: 20.0,
             child: Text("User"),
           ),
           Text(
              "Welcome", 
              style: TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Column(children: [
              TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Username', 
                labelText: 'Username'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Password', 
                  labelText: 'Password',
                  ),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Login'),
                style: TextButton.styleFrom(),
                onPressed: () {
                  print("hi code for");
                },)
            ],
          ),
            )
        ],
      )
    );
  }
}