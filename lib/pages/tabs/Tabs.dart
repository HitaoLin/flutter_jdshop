import 'package:flutter/material.dart';
import 'package:flutter_jdshop/pages/tabs/Cart.dart';
import 'package:flutter_jdshop/pages/tabs/Category.dart';
import 'package:flutter_jdshop/pages/tabs/Home.dart';
import 'package:flutter_jdshop/pages/tabs/User.dart';

class Tabs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabsState();
  }

}

class TabsState extends State<Tabs>{

  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('jdshop'),
      ),
      body:this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:this._currentIndex ,
        onTap: (index){
          setState(() {
            this._currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('购物车')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的')
          ),
        ],
      ),
    );
  }
}