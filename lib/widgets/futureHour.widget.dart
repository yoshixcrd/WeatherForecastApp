


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/weatherAPI.model.dart';

FutureBuilder<Weather_API> futureHour(BuildContext context, Future<Weather_API> weather_api) {
  return FutureBuilder<Weather_API>(
    future: weather_api,
    builder: (context, snapshot){
      if(snapshot.hasData) {
        return Center(
          child: Text(
            snapshot.data.results.time,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lucida",
              fontSize: 22,
            ),
          ),
        );
      }
    }
  );
}