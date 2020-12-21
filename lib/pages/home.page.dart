import 'package:PrevisaoDoTempo/bloc/weather.bloc.dart';
import 'package:PrevisaoDoTempo/models/weatherAPI.model.dart';
import 'package:PrevisaoDoTempo/pages/loading.page.dart';
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
  void didChangeDependencies() {
    weather_api = fetchWeatherAPI();
    super.didChangeDependencies();
   
  }

  @override
  Widget build(BuildContext context) {
    if(completed)
      return Scaffold(
        // Muda o background de acordo com a condição do clima
        body: FutureBuilder<Weather_API>(
          future: weather_api,
          builder: (context, snapshot) {
            if(snapshot.hasData)
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
                                  SizedBox(
                                    height: 50,
                                  ),
                                  
                                  // Nome da Cidade
                                  FutureBuilder<Weather_API>(
                                    future: weather_api,
                                    builder: (context, snapshot) {
                                      if(snapshot.hasData) {
                                        return Center(                  
                                          child: Text(
                                            snapshot.data.results.cityName,
                                            style: TextStyle(
                                            fontSize: 36,
                                            color: Colors.white,
                                            fontFamily: "Lucida",
                                            ),
                                          ),
                                        );
                                      }
                                      else {
                                          return Container(
                                            child: Text("teste"),
                                          );
                                        }
                                    }
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),

                                  // Dia da semana
                                  FutureBuilder<Weather_API>(
                                    future: weather_api,
                                    builder: (context, snapshot) {
                                      if(snapshot.hasData) {
                                        return Center(
                                          child: Text(
                                            // String dia da semana
                                            bloc.getDay(snapshot.data.results.forecast[0].weekday),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Lucida",
                                            ),
                                          ),
                                        );
                                      }
                                      else {
                                          return Container(
                                            child: Text("teste"),
                                          );
                                        }
                                    }
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),

                                  // Data
                                  FutureBuilder<Weather_API>(
                                    future: weather_api,
                                    builder: (context, snapshot) {
                                      if(snapshot.hasData) {
                                        return Center(
                                          child: Text(
                                            // Data
                                            snapshot.data.results.date, 
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Lucida",
                                            ),
                                          ),
                                        );
                                      }
                                      else {
                                          return Container(
                                            child: Text("teste"),
                                          );
                                        }
                                    }
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  // Hora atual
                                  FutureBuilder<Weather_API>(
                                    future: weather_api,
                                    builder: (context, snapshot) {
                                      
                                      if(snapshot.hasData) {
                                        return Center(
                                          child: Text(
                                            // H
                                            snapshot.data.results.time,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Lucida",
                                            ),
                                          ),
                                        );
                                      }
                                      else {
                                          return Container(
                                            child: Text("teste"),
                                          );
                                        }
                                    }
                                  ),
                                  
                                  // Fim Inicio

                                  // Inicio Icon Clima
                                  FutureBuilder<Weather_API>(
                                    future: weather_api,
                                    builder: (context, snapshot) {
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
                                        else {
                                          return Container(
                                            child: Text("teste"),
                                          );
                                        }
                                      },
            
                                  ),
                                    
                                  
                                  // Fim Icon Clima

                                  // Descrição do clima
                                  FutureBuilder<Weather_API>(
                                    future: weather_api,
                                    builder: (context, snapshot) {
                                      if(snapshot.hasData) {
                                        return Center(
                                          child: Text(
                                            // Clima
                                            snapshot.data.results.forecast[0].description,
                                            style: TextStyle(
                                              fontFamily: "Lucida",
                                              fontSize: 26,
                                              color: Colors.white,
                                            ),  
                                          ),
                                        );
                                      }
                                      else {
                                          return Container(
                                            child: Text("teste"),
                                          );
                                        }
                                    }
                                  ),

                                  // Fim Clima

                                  SizedBox(
                                    height: 20,
                                  ),

                                  // Temperatura Maxima
                                  FutureBuilder<Weather_API>(
                                    future: weather_api,
                                    builder: (context, snapshot) {
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
                                      else {
                                          return Container(
                                            child: Text("teste"),
                                          );
                                        }
                                    }
                                  ),
                                  
                                  // Temperatura Minima
                                  if(mounted)
                                    FutureBuilder<Weather_API>(
                                      future: weather_api,
                                      builder: (context, snapshot) {
                                        if(snapshot.hasData) {
                                          return Container(
                                            padding: EdgeInsets.only(
                                              left: 36,
                                            ),
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              // Temperatura Minima
                                              "Minima: " + snapshot.data.results.forecast[0].min.toString() + "°",
                                              style: TextStyle(
                                                fontFamily: "Lucida",
                                                fontSize: 25,
                                                color: Colors.white,
                                              ),
                                            ),
                                          );
                                        }
                                        else {
                                          return Container(
                                            child: Text("teste"),
                                          );
                                        }
                                      }
                                      
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
              else{
                return LoadingPage();
              }
            }
          ),
        );
      
     
    }

 }
  





