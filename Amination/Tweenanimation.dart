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



class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  @override
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;
  bool flag = true;
// preform a toggle function
  callback(){
        setState(() {
          if (flag) {
            animationController.forward( );
            flag =false;
          } else {
            animationController.reverse();
            flag = true;
          }
  });
  }


  @override
  void initState() {
    // TODO: implement initState
     super.initState();
     animationController = AnimationController(vsync: this, duration: Duration(seconds: 5));

     animation = Tween(begin: 100.0, end: 200.0).animate(animationController);
     colorAnimation = ColorTween(begin: Colors.blue, end: Colors.orange)
        .animate(animationController);


     // just for one
  //   animationController.addListener(() {
  //      print(animation.value);
  //     setState(() {
  //
  //     });
  //   });
  //
  // }


     }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: animation.value,
              height: animation.value,
              color: colorAnimation.value,

            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: callback, child: Text("click")),

          ],
        ),

      ),
    );
  }
}


