import 'package:PrevisaoDoTempo/connectionStatusSingleton.dart';
import 'package:PrevisaoDoTempo/pages/home.page.dart';
import 'package:PrevisaoDoTempo/pages/loading.page.dart';
import 'package:flutter/material.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ConnectionStatusSingleton connectionStatus = ConnectionStatusSingleton.getInstance();
  connectionStatus.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Color(0xFF002171),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
