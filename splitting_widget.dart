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
      
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 8, ),
              child: Text("My App ",  style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            backgroundColor: Colors.grey.shade400,
          ),
        ),

        body: Column(
          children: [
            circle_avater(),
            List_title(),
            box_decortion(),
            grid_view(),



          ],
        ) ,
    );
  }
}

class circle_avater extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // specific for CircleAvatar
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.grey.shade400,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: ClipOval(
                  child: SizedBox(
                    width: 80, // Desired image width
                    height: 80, // Desired image height
                    child: Image.asset(
                      'assets/image/logo.png', // Path to your image asset
                      fit: BoxFit.cover, // Fit the image within the box
                    ),
                  ),
                ),
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,),
      ),
    );
  }
}

class List_title extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // specific for ListView
    return Expanded(
      flex: 13,
      child: Container(
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown,
            ),
            title: Text('Name'),
            subtitle: Text('number'),
            trailing: Icon(Icons.delete),
          ),
        ),
        color: Colors.grey.shade300,
      ),
    );
  }
}

class box_decortion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // specific for box decoration
    return  Expanded(
      flex: 5,
      child: Container(
        color: Colors.grey.shade400,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.yellow.shade300,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class grid_view extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // specific for gridView
    return   Expanded(
      flex: 3,
      child: Container(
        color: Colors.yellow.shade200,
        child: GridView.count(crossAxisCount: 6,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container( color: Colors.blueGrey,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container( color: Colors.blueGrey,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container( color: Colors.blueGrey,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container( color: Colors.blueGrey,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container( color: Colors.blueGrey,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container( color: Colors.blueGrey,),
            ),

          ],
        ),
      ),
    );
  }
}
