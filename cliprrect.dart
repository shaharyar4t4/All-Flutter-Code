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

      body: Center(
        
        child: ClipRRect(
          //borderRadius: BorderRadius.circular(10),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
          child: Container(
            width: 200,
            height: 100,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}