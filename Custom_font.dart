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

class dashborad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Wallet", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)),
        backgroundColor: Colors.white,
      ),

      body: Text('hello world', style: TextStyle(fontFamily: 'fontmainn',),
      ),
    );
  }
}




















    /* Container(
        width: 150,
        height: 100,
        color: Colors.deepOrangeAccent,
        child: CircleAvatar(
         // backgroundColor:,
          // backgroundImage: ,
          //radius: ,
          //minRadius: ,
          //maxRadius: ,
          width: 50,
          height: 50,
          backgroundImage: AssetImage('assets/image/logo.png'),
          minRadius: 20,

        ),
      ),
    );

  }

}*/