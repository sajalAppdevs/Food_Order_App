import 'package:flutter/material.dart';

class DetailsBody extends StatefulWidget {
  final int price;
  final String image;
  DetailsBody({this.image, this.price});
  @override
  _DetailsBodyState createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  double _currentSliderValue = 100;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: size.height * .40,
                  width: size.width,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            color: Colors.black26,
                            blurRadius: 11)
                      ],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(widget.image))),
                ),
              )
            ],
          ),
          Container(
              child: Slider(
                  activeColor: Colors.green,
                  value: _currentSliderValue,
                  min: 0,
                  max: 2000,
                  divisions: 20,
                  label: (_currentSliderValue.round().toString() + 'g'),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  })),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              '$_currentSliderValue gram',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              child: Text(
            'Cost : ${_currentSliderValue * widget.price / 1000}  Taka',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 50),
                  height: 70,
                  width: 100,
                  child: IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 50),
                  height: 70,
                  width: size.width * 0.6,
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
