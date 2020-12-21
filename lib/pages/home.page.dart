import 'package:PrevisaoDoTempo/models/weatherAPI.model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<Weather_API> weather_api;
  var backgrounde;
  var iconeCentro;

  @override
  void initState() {
    super.initState();
    weather_api = fetchWeatherAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Muda o background de acordo com a condição do clima
      body: FutureBuilder<Weather_API>(
        future: weather_api,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            switch(snapshot.data.results.forecast[0].condition){
              case "storm":
                backgrounde = "assets/background/bg-tempestade.png";
                break;
              case "rain":
                backgrounde = "assets/background/bg-chuvoso.png";
                break;
              case "clear_day":
                backgrounde = "assets/background/bg-ensolarado.png";
                break;
              case "cloud":
                backgrounde = "assets/background/bg-nublado.png";
                break;
              case "cloudly_day":
                backgrounde = "assets/background/bg-nublado.png";
                break;
              case "cloudly_night":
                backgrounde = "assets/background/bg-nublado.png";
                break;
              case "clear_night":
                backgrounde = "assets/background/bg-noite.png";
                break;

              case "none_day":
                backgrounde = "assets/background/bg-ensolarado.png";
                break;

              case "none_night":
                backgrounde = "assets/background/bg-noite.png";
                break;

            }
          }
          return Container(
              // Background Img
              decoration: BoxDecoration(
                image: DecorationImage(
                  // Image Background Do Clima 
                  image: AssetImage(backgrounde),
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
                                  };
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
                                        snapshot.data.results.forecast[0].weekday,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Lucida",
                                        ),
                                      ),
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
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              // Hora atual
                              FutureBuilder<Weather_API>(
                                future: weather_api,
                                builder: (context, snapshot) {
                                  return Center(
                                    child: Text(
                                      // Hora
                                      snapshot.data.results.time,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Lucida",
                                      ),
                                    ),
                                  );
                                }
                              ),
                              
                              // Fim Inicio

                              // Inicio Icon Clima
                              FutureBuilder<Weather_API>(
                                future: weather_api,
                                builder: (context, snapshot) {
                                  if(snapshot.hasData) {
                                    switch(snapshot.data.results.forecast[0].condition) {
                                      case "storm":
                                        iconeCentro = "assets/image/tempestade.png";
                                        break;
                                      case "rain":
                                        iconeCentro = "assets/image/chuva.png";
                                        break;
                                      case "clear_day":
                                        iconeCentro = "assets/image/sol-pequeno.png";
                                        break;
                                      case "cloud":
                                        iconeCentro = "assets/image/sol-com-nuvem.png";
                                        break;
                                      case "cloudly_day":
                                        iconeCentro = "assets/image/sol-com-nuvem.png";
                                        break;
                                      case "cloudly_night":
                                        iconeCentro = "assets/image/sol-com-nuvem.png";
                                        break;
                                      case "clear_night":
                                        iconeCentro = "assets/image/noite.png";
                                        break;

                                      case "none_day":
                                        iconeCentro = "assets/image/sol-pequeno.png";
                                        break;

                                      case "none_night":
                                        iconeCentro = "assets/image/noite.png";
                                        break;
                                      }
                                    }
                                    return Center(
                                      child: Container(
                                        height: 300,
                                        child: Image(
                                          image: AssetImage(iconeCentro),
                                        ),
                                      ),
                                    );
                                  },
        
                              ),
                                
                              
                              // Fim Icon Clima

                              // Descrição do clima
                              FutureBuilder<Weather_API>(
                                future: weather_api,
                                builder: (context, snapshot) {
                                  return Center(
                                    child: Text(
                                      // Clima
                                      snapshot.data.results.forecast[0].description,
                                      style: TextStyle(
                                        fontFamily: "Lucida",
                                        fontSize: 36,
                                        color: Colors.white,
                                      ),  
                                    ),
                                  );
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
                              ),

                              // Temperatura Minima
                              FutureBuilder<Weather_API>(
                                future: weather_api,
                                builder: (context, snapshot) {
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
                              ),
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


