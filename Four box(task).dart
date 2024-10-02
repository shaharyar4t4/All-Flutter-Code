import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",

      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    home: DashboredScreen(),

    );

  }

}

class DashboredScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text("My Flutter App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children:<Widget> [
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   Container(
                    width: 100,
                     height: 100,
                     color: Colors.yellow,
                     child: InkWell(
                       onTap: (){
                         print("hello world");
                       },
                       child: Center(child: Text("button 1", style: TextStyle(fontSize: 12),)),
                     ),
                   ),
                   Container(
                     width: 100,
                     height: 100,
                     color: Colors.yellow,
                     child: InkWell(
                       onTap: (){
                         print("Hi There");
                       },
                       child: Center(child: Text("button 1", style: TextStyle(fontSize: 12),)),
                     ),
                   ),
                 ],
                ),
              SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: InkWell(
                    onTap: (){
                      print("I am Shaharyar");
                    },
                    child: Center(child: Text("button 1", style: TextStyle(fontSize: 12),)),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: InkWell(
                    onTap: (){
                      print("Working on box");
                    },
                    child: Center(child: Text("button 1", style: TextStyle(fontSize: 12),)),
                  ),
                ),
              ],
            ),

          ],
            ),
      )


    );

  }


}

