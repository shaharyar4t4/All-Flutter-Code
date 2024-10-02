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
  var myopic = 1.0;
  bool flay = true;

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
            AnimatedOpacity(
                opacity: myopic,
                duration: Duration(seconds: 1),
                curve: Curves.easeInBack,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blueGrey,
                ),
            ),

            ElevatedButton(onPressed: (){

              setState(() {
                if(flay) {
                  myopic = 0.0;
                  flay =false;
                }else {
                  myopic = 1.0;
                  flay = true;
                }
              });
            }, child: Text("Close"))




            ],
        ),
      )
    );
  }
}