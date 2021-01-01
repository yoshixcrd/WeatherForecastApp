


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/weatherAPI.model.dart';

FutureBuilder<Weather_API> futureCityName(BuildContext context, Future<Weather_API> weather_api) {
  return FutureBuilder<Weather_API>(
    future: weather_api,
    builder: (context, snapshot){
      if(snapshot.hasData) {
        return Center(                  
          child: Text(
            snapshot.data.results.cityName.toUpperCase(),
            style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontFamily: "Lucida",
            ),
          ),
        );
      }
    }
  );
}