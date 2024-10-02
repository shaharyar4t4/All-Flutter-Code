import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      home: const MyHomePage(title: '_', ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
  var time=DateTime.now();
    return Scaffold(
      
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 8, ),
              child: Text("My App ",  style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            backgroundColor: Colors.grey.shade400,
          ),
        ),

        body: Container
          (
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            spacing: 11,
              runSpacing: 11,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.cyan,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orangeAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.limeAccent,
                ),
              ],
            ),
        ),


    );
  }
}

