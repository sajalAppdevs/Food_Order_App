import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';
import 'package:food_order_app/screens/details/details_body.dart';

class FoodCard extends StatelessWidget {
  final Product product;
  const FoodCard({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsBody(
                      image: product.desImage,
                      price: product.price,
                    )));
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue),
            child: Container(
              margin: EdgeInsets.only(right: 10, top: 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [kdefaultShadow]),
            ),
          ),
          Positioned(
            bottom: 25,
            right: 10,
            child: Container(
              height: 180,
              width: 200,
              child: Image.asset(product.image),
            ),
          ),
          //title
          Positioned(
              top: 45,
              left: 45,
              child: Text(
                product.title,
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          //foodgradient
          Positioned(
            top: 80,
            left: 60,
            child: Text(
              product.foodGradient,
              style: TextStyle(
                  color: kColor[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            child: Container(
              alignment: AlignmentDirectional.center,
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      topRight: Radius.circular(22))),
              child: Text(
                "${product.price}\$",
                style: TextStyle(
                    color: kColor[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          )
        ],
      ),
    );
  }
}
