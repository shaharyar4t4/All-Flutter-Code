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

        body: Container(
          width: 400,
          height: 400,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blue.shade200,

              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red.shade200,

                ),

              ),
              Positioned(
                bottom: 150,
                right: 150,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.yellow.shade200,

                ),


              ),
              Positioned(
                bottom: 120,
                right: 120,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green.shade200,

                ),


              ),

            ],
          ),
        ),
    );
  }
}

