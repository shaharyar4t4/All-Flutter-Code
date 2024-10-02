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

      body: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Strawberry Paulova' , style: TextStyle(fontSize: 18)),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text('Strawberry Paulova' , style: TextStyle(fontSize: 18)),
      ],
      )

          ],

        ),
      ) ,
    );
  }
}
