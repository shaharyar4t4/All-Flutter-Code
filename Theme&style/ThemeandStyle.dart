import 'package:app/ui_builder/ui_work.dart';
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
      // this is specific for defualt things like color and text style etc
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,),
              titleMedium: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
          ),
      ),
    home: dashborad(),
    );
    throw UnimplementedError();
  }

}

class dashborad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Wallet", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: [
          Text('Text1', style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.orange)),
          Text('Text2', style: Theme.of(context).textTheme.titleMedium),
          Text('Text3', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          Text('Text4', style: mt(),),
        ],
      ),
    );
  }
}




















 