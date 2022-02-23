import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Uzan App",
      theme: new ThemeData(primarySwatch: Colors.pink),
      home: new LoginPage(),


    );
  }
}