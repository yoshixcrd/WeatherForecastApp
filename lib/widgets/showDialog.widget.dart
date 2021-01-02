import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future showDialogWidget(BuildContext context) async{
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Connection Error"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Could not connect to the server'),
              Text('Please check your connection and restart the app'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Restart'),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
        ],
      );    
    }
  );
}