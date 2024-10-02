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
      // this is specific for defualt things like color and text style etc
      theme: ThemeData(
          primarySwatch: Colors.blue,

      ),
    home: dashborad(),
    );
    throw UnimplementedError();
  }

}

class dashborad extends StatelessWidget {
 var emailText= TextEditingController();
 var passText= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Wallet", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)),
        backgroundColor: Colors.blue.shade200,
      ),

      body: Center(
        child: Container(
          width:300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Email Textfield
              TextField(
                      controller: emailText,
                decoration: InputDecoration(
                          hintText: " Email ",
                         suffixIcon:Icon(Icons.email, color: Colors.blue,),
                        // focused border
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        // enable border
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        // simple border
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),

                      ),
                    ),

              SizedBox(height: 13,),
              // pass Textfield
              TextField(
                controller: passText,
                obscureText: true,

                decoration: InputDecoration(

                  hintText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye_sharp, color: Colors.blue,),
                  // focused border
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  // enable border
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  width: 150,
                  child: ElevatedButton(onPressed: (){
                    String uEmail= emailText.text.toString();
                    String pass=passText.text.toString();
                    print('your Email is $uEmail, and your Password $pass');
                  }
                      , child: Text('Login')),
                ),
              )
            ],
          ),
              ),
      ),



    );
  }
}




















