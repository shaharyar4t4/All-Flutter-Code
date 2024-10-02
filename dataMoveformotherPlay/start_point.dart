
import 'package:app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class start_point extends StatelessWidget{
  var namtodisplay;

  start_point(
      this.namtodisplay,
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Wellcome'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Hello, Wellcome $namtodisplay", style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return MyHomePage();
              },
              )
              );
            }, child: Text("Next")),
          ],
        ),
      ),
    );

  }
}