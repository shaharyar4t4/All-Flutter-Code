import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_btn extends StatelessWidget {
  final String btnname;
  final Icon? icon; // why used this ? => the reason is that consider a null value
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  custom_btn(
      {
      //why used the required reason is that they need a
      required this.btnname,
      this.icon ,
      this.bgcolor = Colors.cyan, // this constant
      this.textStyle,
      this.callback});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!(); // "!" means this is not a null
      },
      child: icon != null
          ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                
                SizedBox(width: 5,),
                Text(btnname, style: mt()),
              ],
            ) : Text(
              btnname,
            ),   //the btnname is used for as a Alt text
      style: ElevatedButton.styleFrom(

          backgroundColor: bgcolor,
          shadowColor: bgcolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(11),
            topLeft: Radius.circular(11),
            bottomLeft: Radius.circular(11),
            bottomRight: Radius.circular(11),
          ))),

    );

  }
  TextStyle mt(){
    return TextStyle(
      fontSize: 18,
      color: Colors.white,
    );
}
}

