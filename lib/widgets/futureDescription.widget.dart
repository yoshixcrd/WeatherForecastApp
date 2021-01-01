


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../bloc/weather.bloc.dart';
import '../models/weatherAPI.model.dart';

FutureBuilder<Weather_API> futureDescription(BuildContext context, Future<Weather_API> weather_api, BlocWeather bloc) {
  return FutureBuilder<Weather_API>(
    future: weather_api,
    builder: (context, snapshot){
      if(snapshot.hasData) {
        return Center(
          child: Text(
            bloc.getDescription(snapshot.data.results.forecast[0].condition).toUpperCase(),
            style: TextStyle(
              fontFamily: "Lucida",
              fontSize: 26,
              letterSpacing: -0.5,
              color: Colors.white,
            ),  
          ),
        );
      }
    }
  );
  
}