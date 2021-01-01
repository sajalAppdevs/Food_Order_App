import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(5),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[200]),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: "search",
            hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
      ),
    );
  }
}
