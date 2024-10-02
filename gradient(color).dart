import 'dart:async';

import 'package:app/detial.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  @override
  var lisarr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),

      body: Container(

        decoration: BoxDecoration(

          // gradient: LinearGradient(colors: [
          //   // Colors.orangeAccent.shade100,
          //   // Colors.orangeAccent.shade200,
          //   // Colors.orangeAccent.shade400,
          //   //Custom color
          //   Color(0xffa18cd1), Color(0xfffbc2eb)
          // ],
          //   begin: FractionalOffset(1.0 , 0.0),
          //   end: FractionalOffset(0.0, 1.0),
          // ),

          gradient: RadialGradient(
            colors: [
              Color(0xffa18cd1), Color(0xfffbc2eb),
            ],
              center: Alignment.centerLeft,
              stops: [0.0, 1.0]
          ),
        ),
      ),
    );
  }
}