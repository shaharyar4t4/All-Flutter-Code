import 'package:app/widget/custombtn.dart';
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

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
              width: 200,
              child: custom_btn(
                btnname: 'Login',
                icon: Icon(Icons.lock, color: Colors.white,),

                callback: () {
                  print("hello world");
                },
              ),
            ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                child: custom_btn(
                  btnname: 'press',
                  icon: Icon(Icons.play_arrow, color: Colors.white,),
                  bgcolor: Colors.orangeAccent,
                  callback: () {
                    print("hello world");
                  },
                ),
              ),
            ]

          ),
        ),

    );
  }
}
