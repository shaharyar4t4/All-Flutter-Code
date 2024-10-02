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

  RangeValues Value =RangeValues(0, 100); // RangeValues acts as a

  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(Value.start.toString(), Value.start.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.orangeAccent.shade100,
      ),

      body:RangeSlider(
        min: 0,
        max: 50,
        divisions: 20,
        labels: labels,
        values: Value,
        onChanged: ( newValue) {
          Value = newValue;
          setState(() {
            print('${newValue.start}, ${newValue.end}');
            
          });
        },

      ),
    );
  }
}