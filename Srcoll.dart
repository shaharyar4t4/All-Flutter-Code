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
         Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
              child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 100,
                          width: 100,
                          color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.black,
                      
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                      
                        ],
                      ),
                    ),
                  )
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.cyan,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.limeAccent,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.blue,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.indigo,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.black,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.blueGrey,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.brown,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.yellowAccent,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.red,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.deepPurple,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.black54,
             ),
             Container(
               margin: EdgeInsets.only(bottom: 8.0),
               width: 200,
               height: 200,
               color: Colors.indigoAccent,
             ),
           ],
          
          ),
        ),
      ),




    );
  }
}
