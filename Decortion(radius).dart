import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: DashboredScreen(),
    );
  }
}

class DashboredScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text("My Flutter App"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightBlue.shade100,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            //color: Colors.blueGrey,   when you used the decoration box now color selection used in decoration box
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(21),
              //borderRadius: BorderRadius.all(Radius.circular(21))
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21))
              /* border: Border.all(
              width: 2,
              color: Colors.black
            )*/
              boxShadow: [
                BoxShadow(
                    blurRadius: 21,
                    color: Colors.grey.shade100,
                    spreadRadius: 7)
              ],
              //  shape: BoxShape.circle  when you this object you need off the border radius
            ),
          ),
        ),
      ),
    );
  }
}
