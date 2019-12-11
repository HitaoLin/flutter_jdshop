import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('跳转到Search'),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          )
        ],
      ),
    );
  }
}