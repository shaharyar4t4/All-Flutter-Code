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
          backgroundColor: Colors.blue.shade400,
        ),
      ),

      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontSize: 21,
            ),
           children: <TextSpan>[
             TextSpan(text: 'hello '),
             TextSpan(text: 'World', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.blue)),
             TextSpan(text: " this is ",),
             TextSpan(text: "flutter", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.orangeAccent, fontWeight: FontWeight.w500))

           ]
          ),

        ),
      ),
    );
  }
}

/*
 SizedBox.shrink
 SizedBox.square
 SizedBox.expand
 SizedBox


 */