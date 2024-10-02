import 'dart:async';

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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  bool flay_cf = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      reload();
    });
  }

  void reload() {
    setState(() {
      flay_cf = false;
    });

    // setState(() {
    //   if(flay_cf){
    //   flay_cf = false;
    // }else{
    //  flay_cf =true;
    // }}
    // );
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
            AnimatedCrossFade(
              // sizeCurve: Curves.bounceOut,
              // secondCurve: Curves.bounceInOut,
              // firstCurve: Curves.decelerate,
              duration: Duration(seconds: 2),
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.orangeAccent.shade200,
              ),
              secondChild: Image.asset(
                'assets/image/logo.png',
                width: 200,
                height: 200,
              ),

              // this below line is represent the if and else condition
              crossFadeState: flay_cf
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            // ElevatedButton(onPressed: (){
            //
            //  reload();
            // }, child: Text("Show"))
          ],
        ),
      ),
    );
  }
}
