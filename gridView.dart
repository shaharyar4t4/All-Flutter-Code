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

var arrColor=[
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.green,
  Colors.greenAccent,
  Colors.grey,
  Colors.pink,
];
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
            backgroundColor: Colors.blue.shade200,
          ),
        ),

        body: Column(
          children: [

           // this is specific for gird for conut now in this widget is help show the number of box a/c to the Count number i.e: assigned 4 so they shows the four boxes
            /*Container(
              height: 200,
              child: GridView.count(crossAxisCount: 4,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(color: arrColor[0],),
                Container(color: arrColor[1],),
                Container(color: arrColor[2],),
                Container(color: arrColor[3],),
                Container(color: arrColor[4],),
                Container(color: arrColor[5],),
                Container(color: arrColor[6],),
                Container(color: arrColor[7],),
              ],
              ),
            ),*/

            //Container( height: 100,),
            // this is specific for gird for Extent now in this widget is help show the number of box a/c to the extent number i.e: assigned 100 so they shows the extent the box
            /*Container(
              height: 200,
              child: GridView.extent(maxCrossAxisExtent: 100,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                  Container(color: arrColor[0],),
                  Container(color: arrColor[1],),
                  Container(color: arrColor[2],),
                  Container(color: arrColor[3],),
                  Container(color: arrColor[4],),
                  Container(color: arrColor[5],),
                  Container(color: arrColor[6],),
                  Container(color: arrColor[7],),
                ],
              ),
            ),*/

          // Suppose you have a condition for to call the grid value in dynamic form

            Container(
              height: 200,
              child: GridView.builder(itemBuilder: (context, index) {
                return Container(color: arrColor[index],);
              },
                itemCount: arrColor.length,
                /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                ),*/
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 11,
                ),
              ),


            )


          ],
        ),
    );
  }
}
