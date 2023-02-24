import 'package:flutter/material.dart';
import 'package:my_project/pages/HomePage.dart';
import 'package:my_project/pages/cartPage.dart';
import 'package:my_project/pages/itemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*debugShowCheckedModeBanner: false,*/
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white,),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => cartPage(),
        "itemPage": (context) => itemPage(),

      },
    );
  }
}