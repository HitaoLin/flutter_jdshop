import 'package:flutter/material.dart';

class CartPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CartPageState();
  }

}

class CartPageState extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          Text('Cart')
        ],
      ),
    );
  }
}