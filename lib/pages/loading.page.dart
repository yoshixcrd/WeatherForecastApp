import 'dart:async';
import 'package:PrevisaoDoTempo/connectionStatusSingleton.dart';
import 'package:PrevisaoDoTempo/widgets/showDialog.widget.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
   StreamSubscription _connectionChangeStream;
  var isOffline = false;
  @override
  void initState() {
    ConnectionStatusSingleton connectionStatus = ConnectionStatusSingleton.getInstance();
    _connectionChangeStream = connectionStatus.connectionChange.listen(connectionChanged);
    super.initState();
  }
  void connectionChanged(dynamic hasConnection) {
    setState(() {
        isOffline = !hasConnection;
        if(isOffline){
          showDialogWidget(context);
        }
    });
    }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          // Image Background Do Clima 
          image: AssetImage("assets/loading/bg-load.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              child: Center(
                child: Image(
                  image: AssetImage("assets/loading/img-load.png"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 100,
                top: 15,
                left: 100,
              ),
              child: Center(
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}