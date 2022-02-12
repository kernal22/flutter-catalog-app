import 'package:flutter/material.dart';
import 'package:flutter_cataloge/pages/home_page.dart';
import 'package:flutter_cataloge/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/login" :(context) => LoginPage(),
        "/home" :(context) => HomePage(),
      },
    );
  }
}