
import 'dart:async';

import 'package:app/start_point.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget{
  @override
  State<splash_screen> createState() => _splash_screenState();

}


class _splash_screenState extends State<splash_screen> {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {

     // this code specific for Replace the page and not show the splash screen
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => start_point(),
          ));

    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan.shade300,
        child: Center(
            child: Text(
          'Vox City',
          style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        ),
      ),
    );
  }
}