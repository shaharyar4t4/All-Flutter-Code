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
 var no1= TextEditingController();
  var no2= TextEditingController();
  var result;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),

      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          maxWidth: 300,
          minHeight: 50,
          maxHeight: 80,
        ),
        child: Text("Hi there, My Name is Shaharyar Ali and This is my presentation topic is flutter", style: TextStyle(
          fontSize: 20,
          overflow: TextOverflow.fade,
        ),),
      ),
    );
  }
}