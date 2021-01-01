import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';
import './screens/home/home_screen.dart';

void main() => runApp(FoodOrderApp());

class FoodOrderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Order App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.blue,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kPrimaryColor),
            bodyText2: TextStyle(color: ksecondaryColor),
          )),
      home: HomeScreen(),
    );
  }
}
