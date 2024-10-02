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

class dashborad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Wallet", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)),
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 300, // Adjust the width of the container
                height: 150, // Adjust the height of the container
                decoration:  BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('assets/image/cover.png'),
                      fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey,
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your balance', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),),
                    SizedBox(height: 10), // Space between the text
                    Text('\$860,500.00', style: TextStyle( color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
          
              ),
              SizedBox(height: 28),
          
          // second box
              Container(
                width: 350, // Adjust the width of the container
                height: 200, // Adjust the height of the container
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0,10),
                      )
                    ],
                  border: Border.all(
                    color: Colors.purple.withOpacity(0.5),
                    width: 2.5,
                  )
                ),
          
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/image/mc.png',
                          height: 50,
                          width: 80,
                        ),
                        Text('08/28',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        ),
                      ],
                      ),
                      Spacer(),
                      Text('\$250,590.00', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10), // Space between the text
                      Text('**** **** **** 1234', style: TextStyle( color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400,),
                      ),
          
                    ],
                  ),
                ),
              ),
          
             SizedBox(height: 28),
              Container(
                width: 350, // Adjust the width of the container
                height: 200, // Adjust the height of the container
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0,10),
                      )
                    ],
                    border: Border.all(
                      color: Colors.orange.withOpacity(0.5),
                      width: 2.5,
                    )
                ),
          
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/image/visa.png',
                            height: 50,
                            width: 80,
                          ),
                          Text('08/28',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text('\$250,590.00', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10), // Space between the text
                      Text('**** **** **** 2486', style: TextStyle( color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400,),
                      ),
          
                    ],
                  ),
                ),
              ),
              // third box
              SizedBox(height: 28),
              Container(
                width: 350, // Adjust the width of the container
                height: 200, // Adjust the height of the container
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0,10),
                      )
                    ],
                    border: Border.all(
                      color: Colors.red.withOpacity(0.5),
                      width: 2.5,
                    )
                ),
          
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/image/pay.png',
                            height: 50,
                            width: 80,
                          ),
                          Text('08/28',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text('\$250,590.00', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10), // Space between the text
                      Text('**** **** **** 2486', style: TextStyle( color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400,),
                      ),
          
                    ],
                  ),
                ),
              )
          
          
            ],
          ),
        ),

      ),


    );
  }
}




















    /* Container(
        width: 150,
        height: 100,
        color: Colors.deepOrangeAccent,
        child: CircleAvatar(
         // backgroundColor:,
          // backgroundImage: ,
          //radius: ,
          //minRadius: ,
          //maxRadius: ,
          width: 50,
          height: 50,
          backgroundImage: AssetImage('assets/image/logo.png'),
          minRadius: 20,

        ),
      ),
    );

  }

}*/