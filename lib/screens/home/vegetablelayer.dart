import 'package:flutter/material.dart';
import 'package:food_order_app/components/food_card.dart';
import 'package:food_order_app/components/item_card.dart';
import 'package:food_order_app/constants.dart';

class VegetablesLayer extends StatelessWidget {
  const VegetablesLayer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 35,
                  decoration: BoxDecoration(color: Colors.blue[700]),
                  child: Text(
                    "Today",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[700]),
                  )),
            )
          ],
        ),
        ItemCard(
          image1: 'assets/images/tomato.jpeg',
          name1: 'Tomato',
          price1: ' 20 Taka',
          energy3: '18cal/100g',
          image2: 'assets/images/cauliflower.jpeg',
          name2: 'Cauliflower',
          energy2: '25cal/100g',
          price2: '25 Taka',
          image3: 'assets/images/beans.jpeg',
          name3: 'Beans',
          energy1: '31cal/100g',
          price3: '30 Taka',
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                  height: 35,
                  decoration: BoxDecoration(color: Colors.blue[700]),
                  child: Text(
                    "Tomorrow",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[700]),
                  )),
            )
          ],
        ),
        ItemCard(
          image1: 'assets/images/tomato.jpeg',
          name1: 'Tomato',
          price1: ' 20 Taka',
          energy3: '18cal/100g',
          image2: 'assets/images/cauliflower.jpeg',
          name2: 'Cauliflower',
          energy2: '25cal/100g',
          price2: '25 Taka',
          image3: 'assets/images/beans.jpeg',
          name3: 'Beans',
          energy1: '31cal/100g',
          price3: '30 Taka',
        ),
      ],
    );
  }
}

class VegetablesLayer2 extends StatelessWidget {
  const VegetablesLayer2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
          ),
          ListView.builder(
            itemCount: vegetableProducts.length,
            itemBuilder: (context, index) => FoodCard(
              product: vegetableProducts[index],
            ),
          )
        ],
      ),
    );
  }
}
