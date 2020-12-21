

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget loading(BuildContext context) {
  return Scaffold(
    body: Container(
      
      child: Center(
        child: CircularProgressIndicator(backgroundColor: Colors.black,)
      ),
    ),
  );
}