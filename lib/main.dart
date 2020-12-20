import 'package:PrevisaoDoTempo/pages/home.page.dart';
import 'package:flutter/material.dart';

import 'themes/teste.theme.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

