

import 'package:PrevisaoDoTempo/pages/home.page.dart';
import 'package:flutter/material.dart';
var teste = false;
class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}


Widget loading(BuildContext context) {
  return Container(
    child: Center(child: CircularProgressIndicator(),),
  );
}