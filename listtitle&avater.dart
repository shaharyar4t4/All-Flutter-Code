import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(flutterapp());
}

class flutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutterapp",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    home: dashborad(),
    );
    throw UnimplementedError();
  }
  
}

class dashborad extends StatelessWidget{
  var arrName=['Ali','hassan','fahad', 'Shaharya','maaz', 'Sameer', 'nasir'];
  var arrNum=['0338292903','03849303354','0389050443','039292034','039949440','038944003','038994945'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome"),
        backgroundColor: Colors.blue.shade100,
      ),

      body: ListView.separated(itemBuilder: (context,index) {
         return ListTile(
            leading: CircleAvatar(
              child: Text('name', style: TextStyle(color: Colors.black,fontSize: 11), ),
              //backgroundImage: AssetImage('assets/image/logo.png'),
              backgroundColor: Colors.indigoAccent.shade100,
            ),
            title: Text(arrName[index]),
            subtitle: Text(arrNum[index]),
            trailing: Icon(Icons.add),

         );

      },
        itemCount: arrName.length,
     separatorBuilder: (context, index){
        return Divider(height: 10, thickness: 3);
    }
      ),
    );

  }
  
}