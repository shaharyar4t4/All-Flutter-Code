import 'package:app/splash_screen.dart';
import 'package:app/start_point.dart';
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
      home: splash_screen(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

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
            Text("Chale Nikal", style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return start_point();
              },
              )
              );
            }, child: Text("back")),
          ],
        ),
      ),
    );
  }
}