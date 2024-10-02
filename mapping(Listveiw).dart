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
  var user = [
    {
      'name': 'hassan',
      'mob': '09920233',
      'unread': '3',
    },
    {
      'name': 'Fahad',
      'mob': '099232233',
      'unread': '4',
    },
    {
      'name': 'Sameer',
      'mob': '0992322123',
      'unread': '5',
    },
    {
      'name': 'Muneeb',
      'mob': '0992322123',
      'unread': '6',
    },
    {
      'name': 'Maaz',
      'mob': '0932322123',
      'unread': '7',
    },
    {
      'name': 'Nasir',
      'mob': '0932310123',
      'unread': '8',
    },
    {
      'name': 'Shaharyar',
      'mob': '09323101212',
      'unread': '9',
    },
    {
      'name': 'Ali', // Removed extra space
      'mob': '09323101212',
      'unread': '10',
    },
  ];


  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),

      body: Container(
        child: ListView(
            children: user.map((value) => ListTile(
               leading: Icon(Icons.supervised_user_circle),
               title:  Text(value['name'].toString()),
               subtitle: Text(value['mob'].toString()),
               
               trailing: CircleAvatar(
                 radius: 16,
                 backgroundColor: Colors.orangeAccent,
                 child: Text(value['unread'].toString(),  style:TextStyle(color: Colors.white),),
               ),

          ),).toList()
        ),
      ),
    );
  }
}


//using decoration , list view, and array data
// children: user.map((value) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(topLeft:Radius.circular(11), bottomRight: Radius.circular(11) ),
//         color: Colors.orangeAccent.shade100,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(child: Text(value)),
//       ),
//     ),
//   );