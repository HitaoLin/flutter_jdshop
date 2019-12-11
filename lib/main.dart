import 'package:flutter/material.dart';
import 'pages/tabs/Tabs.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  MyApp({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//      home: Tabs(),
      debugShowCheckedModeBanner: false,//去掉debug图标
      initialRoute: '/', //初始化的时候加载路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}


