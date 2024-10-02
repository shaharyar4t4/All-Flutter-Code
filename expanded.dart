import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(flutterapp());
}

class flutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutterapp",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    home: dashborad(),
    );
    throw UnimplementedError();
  }
  
}

class dashborad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome"),
        backgroundColor: Colors.blue.shade100,
      ),

      body: Row(
        children: [
          Expanded(
           // flex: 2, because it is use for ratio 
            child: Container(
              width: 50,
              height: 100,

            decoration: BoxDecoration(
              color: Colors.purple.shade100,
              border: Border.all(
                width: 5,
                color: Colors.black
              ),
            ),
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.blueAccent.shade100,
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.pink.shade100,
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.purple.shade100,
            ),
          ),
        ],
      ),
    );

  }
  
}