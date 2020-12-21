


import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              
              child: CircularProgressIndicator(),
            ),
          ),
          
        ],
      ),
    );
    
    
  }

  
  
}