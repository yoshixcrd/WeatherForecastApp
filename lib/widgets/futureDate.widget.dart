


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../bloc/weather.bloc.dart';
import '../models/weatherAPI.model.dart';

FutureBuilder<Weather_API> futureDate(BuildContext context, Future<Weather_API> weather_api, BlocWeather bloc) {
  return FutureBuilder<Weather_API>(
    future: weather_api,
    builder: (context, snapshot){
      if(snapshot.hasData) {
        return Center(
          child: Text(
            // Data
            bloc.getDataFormatada(snapshot.data.results.date), 
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: "Lucida",
            ),
          ),
        );
      }
    }
  );
}