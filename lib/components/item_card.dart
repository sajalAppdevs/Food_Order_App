import 'package:flutter/material.dart';
import 'package:food_order_app/screens/details/details_body.dart';

class ItemCard extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  final String price1;
  final String price2;
  final String price3;
  final String energy1;
  final String name1;
  final String energy2;
  final String name2;
  final String energy3;
  final String name3;
  const ItemCard({
    Key key,
    this.image1,
    this.image2,
    this.image3,
    this.price1,
    this.price2,
    this.price3,
    this.energy1,
    this.name1,
    this.energy2,
    this.name2,
    this.energy3,
    this.name3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Card(
            imageSrc: image1,
            energy: energy1,
            name: name1,
            price: price1,
          ),
          Card(
            imageSrc: image2,
            energy: energy2,
            name: name2,
            price: price2,
          ),
          Card(
            imageSrc: image3,
            energy: energy3,
            name: name3,
            price: price3,
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String imageSrc;
  final String price;
  final String energy;
  final String name;
  const Card({Key key, this.imageSrc, this.price, this.energy, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsBody()));
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 120,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 5,
                    color: Colors.deepOrange[100])
              ],
            ),
            child: Container(
              child: Image.asset(imageSrc),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 40,
            width: 170,
            decoration: BoxDecoration(color: Colors.amber[200]),
            child: Stack(
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Positioned(
                    right: 0,
                    child: Text(
                      price,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[900]),
                    )),
                Positioned(
                    bottom: 2,
                    child: Text(
                      energy,
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
