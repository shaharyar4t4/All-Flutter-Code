import 'dart:async';

import 'package:app/detial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  var nameController = TextEditingController();
  var nameValue= "no save value";
  static const String KEYNAME = "name";



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvalue();

  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),

      body: Center(
        child: Container(
            width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  label: Text("name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () async {
              // var name = nameController.text.toString();
                var prefs = await SharedPreferences.getInstance();
                prefs.setString(KEYNAME, nameController.text.toString());
              }, child: Text("Save"),),
              SizedBox(height: 10,),
              Text(nameValue),
            ],
          ),
        ),
      ),
    );
  }

  void getvalue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    nameValue = getName ?? "no Value Save" ;
    setState(() {

    });
  }
}




