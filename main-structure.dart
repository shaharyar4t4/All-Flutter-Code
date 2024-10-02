import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
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

class DashboredScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text("My Flutter App"),
      ),
      body: ,
    );

  }


}

