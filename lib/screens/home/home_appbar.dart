import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        children: [
          TextSpan(text: "Green ", style: TextStyle(color: Colors.green)),
          TextSpan(text: 'Gold', style: TextStyle(color: Colors.amber[600])),
        ],
      ),
    ),
    actions: [IconButton(icon: Icon(Icons.notifications), onPressed: () {})],
  );
}
