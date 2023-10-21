import 'package:flutter/material.dart';

InputDecoration appInputDecoration(label) {
  return InputDecoration(
      border: OutlineInputBorder(),
      labelText: label,
      filled: true,
      fillColor: Colors.white);
}

TextStyle headerTextStyle() {
  return TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue);
}

ButtonStyle sumButtonStyle() {
  return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
  shadowColor: Colors.black
  );
}


ButtonStyle clearButtonStyle() {
  return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.red,
      elevation: 5,
      shadowColor: Colors.black
  );
}
