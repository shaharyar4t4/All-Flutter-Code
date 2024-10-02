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

        title: Text("Flutter App"),
        backgroundColor: Colors.amber,

      ),

      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.indigoAccent,
          child: Text("Hello"),

        ),

        // Simple Container code which is combination of thing and also it is invisible object
        /*body: container(

            width: 100,
            height: 100,
            color: Colors.indigoAccent,
            child: Text("Hello")
        ),*/
      )

    );
  }
}
