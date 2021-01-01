import 'package:flutter/material.dart';
import 'package:food_order_app/components/food_card.dart';
import 'package:food_order_app/components/item_card.dart';
import 'package:food_order_app/constants.dart';

class FishesLayer extends StatelessWidget {
  const FishesLayer({
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
          image1: 'assets/images/snakehead.jpeg',
          energy1: '118cal/100',
          name1: 'Snakehead Fish',
          price1: '170\nTaka',
          image2: 'assets/images/talapia.jpeg',
          energy2: '129cal/100',
          name2: 'Talapia',
          price2: ' 250Taka',
          image3: 'assets/images/catfish.jpeg',
          energy3: '105 cal/100g',
          name3: 'CatFish',
          price3: ' 150 Taka',
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 5),
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
          image1: 'assets/images/snakehead.jpeg',
          energy1: '118cal/100',
          name1: 'Snakehead Fish',
          price1: '170\nTaka',
          image2: 'assets/images/talapia.jpeg',
          energy2: '129cal/100',
          name2: 'Talapia',
          price2: ' 250Taka',
          image3: 'assets/images/catfish.jpeg',
          energy3: '105 cal/100g',
          name3: 'CatFish',
          price3: ' 150 Taka',
        ),
      ],
    );
  }
}

class FishesLayer2 extends StatelessWidget {
  const FishesLayer2({
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
              itemCount: fishProducts.length,
              itemBuilder: (context, index) => FoodCard(
                    product: fishProducts[index],
                  ))
        ],
      ),
    );
  }
}
