import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(

        title: const Text("Flutter App"),

        backgroundColor: Colors.cyan,

      ),

      body:

      Center(
          child: InkWell(
            onTap: (){
              print("on tap container");
            },
            onDoubleTap: (){
              print("on double tap container");
            },
            onLongPress: (){
              print("on long tap container");
            },
        child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            child:Center(
              child: InkWell(
                  onTap: (){
                    print("hello");
                  },
                  child: Text('Click here', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),)),
            )
        ),
          )
      ) ,
    );
  }
}
