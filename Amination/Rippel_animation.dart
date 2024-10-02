import 'dart:async';

import 'package:app/detial.dart';
import 'package:flutter/cupertino.dart';
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



class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  @override
  late Animation _animation;
  late AnimationController _animationController;
  // late Animation colorAnimation;
  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 5));
    //_animation = Tween(begin: 0.0, end: 2.0).animate(_animationController);

    _animationController.addListener(() {

      setState(() {

      });
    });
    _animationController.forward();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),

      body: Center(
        child: Stack(
          alignment: Alignment.center,
            children:[
              Mybuild(listRadius[0]),
              Mybuild(listRadius[1]),
              Mybuild(listRadius[2]),
              Mybuild(listRadius[3]),
              Icon(Icons.add_call, color: Colors.black, size: 36,),

            ]
        ),
      ),
    );
  }
  Widget Mybuild(radius ){
   return Container(
     width: radius *_animationController.value,
     height: radius *_animationController.value,
     decoration: BoxDecoration(
       shape: BoxShape.circle,
       color: Colors.blue.withOpacity(1.0 - _animationController.value),
     ),
   );
  }
}




