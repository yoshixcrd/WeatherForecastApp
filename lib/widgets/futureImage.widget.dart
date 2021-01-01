


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../bloc/weather.bloc.dart';
import '../models/weatherAPI.model.dart';

FutureBuilder<Weather_API> futureImage(BuildContext context, Future<Weather_API> weather_api, BlocWeather bloc) {
  return FutureBuilder<Weather_API>(
    future: weather_api,
    builder: (context, snapshot){
      if(snapshot.hasData) {
        return Center(
          child: Container(
            height: 300,
            child: Image(
              image: AssetImage(bloc.getImage(snapshot.data.results.forecast[0].condition)),
            ),
          ),
        );
      }
    }
  );
}