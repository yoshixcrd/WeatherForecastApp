



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/weatherAPI.model.dart';

FutureBuilder<Weather_API> futureMaxTemp(BuildContext context, Future<Weather_API> weather_api) {
  return FutureBuilder<Weather_API>(
    future: weather_api,
    builder: (context, snapshot){
      if(snapshot.hasData) {
        return Container(
          padding: EdgeInsets.only(
            left: 36,
            
          ),
          alignment: Alignment.bottomLeft,
          child: Text(
            // Temperatura Maxima
            snapshot.data.results.forecast[0].max.toString() + "°",
            style: TextStyle(
              fontFamily: "Lucida",
              fontSize: 100,
              color: Colors.white,
            ),
          ),
        );
      }
    }
  );
}