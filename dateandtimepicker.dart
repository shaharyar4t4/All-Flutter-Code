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
            backgroundColor: Colors.blue.shade200,
          ),
          
          ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('Select data',
                style: TextStyle( fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2025),);

                if(datePicked!=null){
                  print('Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200,
                ),
                child: Text('Show'),),


              ElevatedButton(onPressed: () async {
                TimeOfDay? pickedtime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input,
                );
                if(pickedtime!=null){
                  print('Time Selected: ${pickedtime.hour}-${pickedtime.minute}');
                }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200,
                ),
                  child: Text('Select Time'),)
            ],
          ),
        )
    );
  }
}
