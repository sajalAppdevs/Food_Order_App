import 'package:flutter/material.dart';
import 'package:food_order_app/components/search_box.dart';
import 'package:food_order_app/screens/home/fishes_layer.dart';
import 'package:food_order_app/screens/home/vegetablelayer.dart';
import 'category_list.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool isActiveVbody = true;

  jumptoVegetables() {
    if (isActiveVbody == false) {
      setState(() {
        isActiveVbody = true;
      });
    }
  }

  jumptoFishes() {
    if (isActiveVbody == true) {
      setState(() {
        isActiveVbody = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(
            jumptoFishes: jumptoFishes, jumptoVegetables: jumptoVegetables),
        Container(child: isActiveVbody ? VegetablesLayer2() : FishesLayer2())
      ],
    );
  }
}
