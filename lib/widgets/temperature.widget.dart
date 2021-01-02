import 'package:flutter/material.dart';

Widget temperature({label: "", min: false, max: false})  {
  var _label = label;
  return (max == false) ? temperatura_min(_label) : temperatura_max(_label);
}

Widget temperatura_max(String label) {
  return Container(
    padding: EdgeInsets.only(
      left: 36,     
    ),
    alignment: Alignment.bottomLeft,
    child: Text(
      label  + "°",
      style: TextStyle(
        fontFamily: "Lucida",
        fontSize: 100,
        color: Colors.white,
      ),
    ),
  );
}

Widget temperatura_min(String label) {
  return Container(
    padding: EdgeInsets.only(
      left: 36,
    ),
    alignment: Alignment.bottomLeft,
    child: Text(
      // Temperatura Minima
      "Minima: " + label + "°",
      style: TextStyle(
        fontFamily: "Lucida",
        fontSize: 25,
        color: Colors.white,
      ),
    ),
  );
}