import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final int days = 50;
  final String name = "sanjay kumar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: Container(
            child: Text("welcome to $days days tutorial by $name"),
          ),
        ),
        drawer: Drawer(),
    );
  }
}