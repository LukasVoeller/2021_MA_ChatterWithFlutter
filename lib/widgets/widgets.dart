import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Text("Chatter mit Flutter", style: TextStyle(fontWeight: FontWeight.bold))
  );
}

InputDecoration textFieldInputDecoration(String hintText){
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
          color: Colors.white60
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.amber)
      ),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      )
  );
}

TextStyle simpleTextStyle(){
  return TextStyle(
    color: Colors.white
  );
}