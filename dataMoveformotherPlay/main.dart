
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
  var nmField= TextEditingController();

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
              Text(" Welcome ", style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),

              TextField(
                controller: nmField,

              ),
              ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return start_point(nmField.text.toString());
                },
                )
                );
              }, child: Text("Submit")
              ),
            ],
          ),
        ),
      ),
    );
  }
}