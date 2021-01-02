import "package:flutter/material.dart";

Widget image_weather({image: "", height: 300.0})  {
  var _image = image;
  double _height = height;
  return Center(
    child: Container(
      height: _height,
      child: Image(
        image: AssetImage(_image),
      ),
    ),
  );
}