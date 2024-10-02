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
    var arrName=['Shaharyar','hassan','Fahad', 'Ali', 'Muneeb', 'maaz', 'sammer'];

    return Scaffold(
  appBar: AppBar(

      title: const Text("Flutter app"),

         backgroundColor: Colors.cyan,

  ),

  body: ListView.separated(itemBuilder:(context, index) {

    return Text(arrName[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),);
  },
    itemCount: arrName.length,
    separatorBuilder: (context, index) {
      return Divider(height: 10, thickness: 4,);
    },
  ),


  /*ListView(

    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('one', style: TextStyle(fontSize: 16),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Two', style: TextStyle(fontSize: 16),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Three', style: TextStyle(fontSize: 16),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('four', style: TextStyle(fontSize: 16),),
      )
    ],*/

    );
  }
  }




