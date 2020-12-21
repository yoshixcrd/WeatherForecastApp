


import 'package:flutter/material.dart';
Future loader() async {
    Future.delayed(Duration(seconds:5));
  }
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

  loader();
  
}