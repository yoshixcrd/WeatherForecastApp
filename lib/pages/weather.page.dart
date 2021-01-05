import 'package:PrevisaoDoTempo/bloc/weather.bloc.dart';
import 'package:PrevisaoDoTempo/models/weatherAPI.model.dart';
import 'package:PrevisaoDoTempo/pages/loading.page.dart';
import 'package:PrevisaoDoTempo/widgets/image.widget.dart';
import 'package:PrevisaoDoTempo/widgets/temperature.widget.dart';
import 'package:PrevisaoDoTempo/widgets/text.widget.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  final double height;
  Future<Weather_API> weather_api;
  WeatherPage({Key key, this.weather_api, this.height}) : super(key: key);
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Weather_API>(
        future: widget.weather_api,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            var weather = Weather(codition: snapshot.data.results.forecast[0].condition, day: snapshot.data.results.forecast[0].weekday);
             return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                // Image Background Do Clima 
                image: AssetImage(weather.background),
                fit: BoxFit.cover,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox( height: widget.height * .04),
                    // Nome da cidade
                    text(label: snapshot.data.results.cityName, fontSize: 36.0),
                    SizedBox(height: widget.height * 0.01),
                    
                    // Dia da semana
                    text(label: weather.dia, fontSize: 22.0),
                    SizedBox(height: widget.height * 0.001),
                    
                    //Data
                    text(label: weather.data, fontSize: 22.0),
                    // Hora
                    SizedBox(height: widget.height * 0.001),
                    text(label: snapshot.data.results.time, fontSize: 22.0),

                    // Image do clima
                    image_weather(image: weather.image),
                    // Descrição do clima
                    
                    text(label: weather.descricao.toUpperCase(), describe: true),
                    SizedBox(height: widget.height * .04),
                    
                    // Temperatura Maxima
                    temperature(label: snapshot.data.results.forecast[0].max.toString(), max: true),
                    // Temperatura minima
                    temperature(label:snapshot.data.results.forecast[0].min.toString(), min: true),
                  ],   
                ),
              ),
            ),
          );
        }
        else {
          return LoadingPage();
        }
      }
    ), 
    );
  }
}