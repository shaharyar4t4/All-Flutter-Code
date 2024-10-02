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
              child: Text("Vox City",  style: TextStyle(color: Colors.green.shade300,fontSize: 40, fontWeight: FontWeight.bold),),
            ),
            backgroundColor: Colors.white,
          ),
          
          ),

        body:
        SingleChildScrollView(
          child: Column(
          
            children: [
              //Min Text
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text('Discover Unforgettable Destinations with Vox City', style: TextStyle(fontSize: 20), ),
              ),
              SizedBox(height: 10,),
          
              // Textfield
              Container(
                width: 380,
                child: TextField(
                decoration: InputDecoration(
                suffixIcon: Icon(Icons.search, color: Colors.blue,),
                  // focused border
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                  ),
                  ),
                ),
                ),
              ),
          
              SizedBox(height: 20,),
              // multiple box
              Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Container(
                      width: 150,
                      height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21),
                          image: DecorationImage(
                            image: AssetImage('assets/image/london.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 21,
                                color: Colors.grey.shade300,
                                spreadRadius: 7)
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('London',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                              ),
                              Text('20 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                      ),

                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/rome.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Rome',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('22 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/amt.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Amsterdam',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('9 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/nagfull.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Niagara Falls',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('16 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/malta.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Malta',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('6 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/stock.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Stockholm',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('2 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/milan.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Milan',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('14 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/tor.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Toronto',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('17 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/venices.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Venice',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('9 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/dubai.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Dubai',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('4 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/florence.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Florence',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('13 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21),
                            image: DecorationImage(
                              image: AssetImage('assets/image/paris.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Colors.grey.shade300,
                                  spreadRadius: 7)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0,),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Paris',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                                  ),
                                  Text('12 experiences', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

          
            ],
          ),
        ),

    );
  }
}
