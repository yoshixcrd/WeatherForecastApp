





import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../bloc/weather.bloc.dart';
import '../models/weatherAPI.model.dart';

FutureBuilder<Weather_API> futureWeakDay(BuildContext context, Future<Weather_API> weather_api, BlocWeather bloc ) {
  return FutureBuilder<Weather_API>(
    future: weather_api,
    builder: (context, snapshot){
      if(snapshot.hasData) {
        return Center(
          child: Text(
            // String dia da semana
            bloc.getDay(snapshot.data.results.forecast[0].weekday),
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