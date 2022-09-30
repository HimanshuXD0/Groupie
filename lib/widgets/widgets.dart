
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const textInputDecoration = InputDecoration(
   labelStyle: TextStyle(color:Colors.black),
   enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.purple),
    
   ),
   focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue)
   ),
   errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red)
   ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void showSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ),
  );
}