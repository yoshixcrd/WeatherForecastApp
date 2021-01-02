import "package:flutter/material.dart";

Widget text({label: "", image: false, fontSize: 0.0, describe: false})  {
  String _label = label;
  double _fontSize = fontSize;

  if(describe) {
    return Center(
      child: Text(
        (_label == null) ? "Loading.." : _label,
        style: TextStyle(
          fontFamily: "Lucida",
          fontSize: 26,
          letterSpacing: -0.5,
          color: Colors.white,
        ),  
      ),
    );
  }

  return Center(                  
    child: Text(
      (_label == null) ? "Loading.." : _label,
      style: TextStyle(
      fontSize: _fontSize,
      color: Colors.white,
      fontFamily: "Lucida",
      ),
    ),
  );
}