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

 var _width = 200.0;
 var _height = 100.0;
 bool flag = true;
 Decoration dec = BoxDecoration(
   borderRadius: BorderRadius.circular(4),
   color: Colors.blueGrey,
 );

class _MyHomePageState extends State<MyHomePage> {
  @override


  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              AnimatedContainer(
                  width: _width,
                  height: _height,
                  decoration: dec,
                  curve: Curves.bounceOut,
                  duration: Duration(
                    seconds: 2
                  )
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  if(flag){
                   _width = 100.0;
                   _height = 200.0;
                   dec = BoxDecoration(
                     borderRadius: BorderRadius.circular(21),
                     color: Colors.orangeAccent,
                   );
                   flag =false;
                 }else{   // true and false is process that called tog gal
                    _width = 200.0;
                    _height = 100.0;
                    dec = BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blueGrey,
                    );
                    flag= true;
                  }
    });
              }, child: Text("Animated"))

          ],
        ),
      )
    );
  }
}