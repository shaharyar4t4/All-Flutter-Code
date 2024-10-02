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
        appBar: AppBar(

          title: Text("Flutter App"),
          backgroundColor: Colors.amber,

        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //Text('Current Time: ${time.hour}:${time.minute}:${time.second}', style: TextStyle(fontSize: 20),),
              Text('Current Time: ${DateFormat('yMMMMEEEEd').format(time)}', style: TextStyle(fontSize: 20),),
              ElevatedButton(onPressed: () {
                setState(() {

                });
              },
                child: Text('Current Time'),
              ),

            ],
          ),
        ),



    );
  }
}
