import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Launch Screen',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login_Page())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        //width: 428,
        // height: 926,
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(20),
            color: Color(0xffffffff)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'image1.png',
              width: 351,
              height: 398,
            )
          ],
        ));
  }
}
