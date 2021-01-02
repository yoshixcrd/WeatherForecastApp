


import 'package:PrevisaoDoTempo/bloc/weather.bloc.dart';
import 'package:PrevisaoDoTempo/models/weatherAPI.model.dart';
import 'package:PrevisaoDoTempo/pages/loading.page.dart';
import 'package:PrevisaoDoTempo/widgets/image.widget.dart';
import 'package:PrevisaoDoTempo/widgets/temperature.widget.dart';
import 'package:PrevisaoDoTempo/widgets/text.widget.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  Future<Weather_API> weather_api;
  WeatherPage({Key key, this.weather_api}) : super(key: key);
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  BlocWeather bloc = new BlocWeather();

  @override
  Widget build(BuildContext context) {
    // print(widget.weather_api);

    return Scaffold(
      // Muda o background de acordo com a condição do clima
      body: FutureBuilder<Weather_API>(
        future: widget.weather_api,
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return LoadingPage();
          }
          return Container(
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
                    // Nome da cidade
                    text(label: snapshot.data.results.cityName, fontSize: 36.0),
                    SizedBox(height: 10),
                    
                    // Dia da semana
                    text(label: bloc.getDay(snapshot.data.results.forecast[0].weekday), fontSize: 22.0),
                    SizedBox(height: 5),

                    //Data
                    text(label: bloc.getDataFormatada(snapshot.data.results.date), fontSize: 22.0),
                    // Hora
                    SizedBox(height: 5),
                    text(label: snapshot.data.results.time, fontSize: 22.0),

                    // Image do clima
                    image_weather(image: bloc.getImage(snapshot.data.results.forecast[0].condition)),
                    // Descrição do clima
                   
                    text(label: bloc.getDescription(snapshot.data.results.forecast[0].condition).toUpperCase(), describe: true),
                    SizedBox(height: 20),
                    
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
      ), 
            );
  }
}