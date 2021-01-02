


import 'package:flutter/material.dart';

Widget temperature({label: "", min: false, max: false})  {
  var _label = label;
  if(max) {
    return Container(
      padding: EdgeInsets.only(
        left: 36,     
      ),
      alignment: Alignment.bottomLeft,
      child: Text(
        // Temperatura Maxima
        _label  + "°",
        style: TextStyle(
          fontFamily: "Lucida",
          fontSize: 100,
          color: Colors.white,
        ),
      ),
    );
  }
  else {
    return Container(
      padding: EdgeInsets.only(
        left: 36,
      ),
      alignment: Alignment.bottomLeft,
      child: Text(
        // Temperatura Minima
        "Minima: " + _label + "°",
        style: TextStyle(
          fontFamily: "Lucida",
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}