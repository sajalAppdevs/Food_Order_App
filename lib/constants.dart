import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFFC61F);
const ksecondaryColor = Color(0xFFB5BFD0);
const kTextColor = Color(0xFF50505D);
const kTextLightColor = Color(0xFF6A727D);
const kColor = Colors.blue;
const BoxShadow kdefaultShadow =
    BoxShadow(offset: Offset(0, 15), blurRadius: 27, color: Colors.black26);

class Product {
  int price;
  String title, image, foodGradient, desImage;
  Product(
      {this.desImage, this.foodGradient, this.image, this.price, this.title});
}

List vegetableProducts = [
  Product(
      desImage: "assets/images/cauliflowernutri.jpg",
      foodGradient: "25cal/100g",
      image: "assets/images/cauliflower.png",
      price: 25,
      title: "Cauliflower"),
  Product(
      desImage: "assets/images/tomatonutri.jpg",
      foodGradient: "31cal/100g",
      image: "assets/images/tomato.png",
      price: 20,
      title: "Tomato"),
  Product(
      desImage: "assets/images/beansnuti.jpg",
      foodGradient: "18cal/100g",
      image: "assets/images/beans.png",
      price: 30,
      title: "Beans")
];

List fishProducts = [
  Product(
      desImage: "assets/images/talapianutri.png",
      foodGradient: "100cal/100g",
      image: "assets/images/talapia.png",
      price: 200,
      title: "Talapia"),
  Product(
      desImage: "assets/images/catfishnutri.png",
      foodGradient: "141cal/100g",
      title: "Catfish",
      image: "assets/images/catfish.png",
      price: 220),
  Product(
      desImage: "assets/images/snakeheadnutri.png",
      foodGradient: "122cal/100g",
      image: "assets/images/snakehead.png",
      price: 210,
      title: "Snakehead Fish")
];
