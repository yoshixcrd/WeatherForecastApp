
import 'package:PrevisaoDoTempo/models/weatherAPI.model.dart';
import 'package:PrevisaoDoTempo/pages/loading.page.dart';
import 'package:PrevisaoDoTempo/pages/weather.page.dart';


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Weather_API> weather_api;
  @override
  void initState() {
    super.initState();
    weather_api = fetchWeatherAPI();
  }

 
  @override
  Widget build(BuildContext context) {
    weather_api.whenComplete(() => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>WeatherPage(weather_api: weather_api)),(Route<dynamic> route) => false));
    
   return LoadingPage();
  }
}