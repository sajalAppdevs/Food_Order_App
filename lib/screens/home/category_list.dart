import 'package:flutter/material.dart';

import 'category_item.dart';

// ignore: must_be_immutable
class CategoryList extends StatefulWidget {
  Function jumptoFishes;
  Function jumptoVegetables;
  CategoryList({Key key, this.jumptoFishes, this.jumptoVegetables});
  _CategoryListState createState() => _CategoryListState(
      jumptoFishes: jumptoFishes, jumptoVegetables: jumptoVegetables);
}

class _CategoryListState extends State<CategoryList> {
  _CategoryListState({this.jumptoFishes, this.jumptoVegetables});
  Function jumptoFishes;
  Function jumptoVegetables;

  bool isActiveV = true;
  bool isActiveF = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CategoryItem(
              title: 'Vegetables',
              isActive: isActiveV,
              press: () {
                widget.jumptoVegetables();
                setState(() {
                  isActiveV = true;
                  isActiveF = false;
                });
              },
            ),
            CategoryItem(
              title: 'Fishes',
              isActive: isActiveF,
              press: () {
                widget.jumptoFishes();
                setState(() {
                  isActiveF = true;
                  isActiveV = false;
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
