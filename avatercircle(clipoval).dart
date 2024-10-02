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

      body:Center(
        child: CircleAvatar(
          radius: 60, // Overall size of CircleAvatar
          backgroundColor: Colors.orange, // Background color
          child: ClipOval(
            child: SizedBox(
              width: 80, // Desired image width
              height: 80, // Desired image height
              child: Image.asset(
                'assets/image/logo.png', // Path to your image asset
                fit: BoxFit.cover, // Fit the image within the box
              ),
            ),
          ),
        ),
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