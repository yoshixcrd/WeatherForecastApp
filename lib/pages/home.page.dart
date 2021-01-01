import 'package:PrevisaoDoTempo/bloc/weather.bloc.dart';
import 'package:PrevisaoDoTempo/models/weatherAPI.model.dart';
import 'package:PrevisaoDoTempo/pages/loading.page.dart';
import 'package:PrevisaoDoTempo/widgets/futureCityName.widget.dart';
import 'package:PrevisaoDoTempo/widgets/futureDate.widget.dart';
import 'package:PrevisaoDoTempo/widgets/futureDescription.widget.dart';
import 'package:PrevisaoDoTempo/widgets/futureHour.widget.dart';
import 'package:PrevisaoDoTempo/widgets/futureImage.widget.dart';
import 'package:PrevisaoDoTempo/widgets/futureMaxTemp.widget.dart';
import 'package:PrevisaoDoTempo/widgets/futureMinTemp.widget.dart';
import 'package:PrevisaoDoTempo/widgets/futureWeakDay.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BlocWeather bloc = new BlocWeather();
  Future<Weather_API> weather_api;
  bool completed = false;
  DateTime now;
 
  var hora;
  var iconeCentro;

  @override
  void initState() {
    super.initState();
    weather_api = fetchWeatherAPI();
    start();
    
  }
  Future start() async {
    if(mounted) {
      setState(() { completed = true; });
    }
 
    
  }
  @override
  Widget build(BuildContext context) {
    if(completed)
      return Scaffold(
        // Muda o background de acordo com a condição do clima
        body: FutureBuilder<Weather_API>(
          future: weather_api,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return Container(
                  // Background Img
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // Image Background Do Clima 
                      image: AssetImage(bloc.getBackground(snapshot.data.results.forecast[0].condition)),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox( height: 50), 
                          futureCityName(context, weather_api),
                          SizedBox(height: 10),
                          futureWeakDay(context, weather_api, bloc),
                          SizedBox(height: 5),
                          futureDate(context, weather_api, bloc),
                          SizedBox(height: 5),
                          futureHour(context, weather_api),
                          futureImage(context, weather_api, bloc),
                          futureDescription(context, weather_api, bloc),
                          SizedBox(height: 20),
                          futureMaxTemp(context, weather_api),
                          futureMinTemp(context, weather_api),
                        ],   
                      ),
                    ),
                  ),
              );
            } else{
                return LoadingPage();
              } 
          }
        ),
      );
    }
}