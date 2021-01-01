import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({Key key, this.title, this.isActive, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontWeight: (isActive ? FontWeight.bold : FontWeight.normal),
                  color: Colors.white,
                  fontSize: 20),
            ),
          ),
          if (isActive)
            Container(
              height: 5,
              width: 30,
              color: Colors.amber,
            )
        ]),
      ),
    );
  }
}
