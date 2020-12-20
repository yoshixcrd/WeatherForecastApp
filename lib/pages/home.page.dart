import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Background Img
        decoration: BoxDecoration(
          image: DecorationImage(
            // Image Background Do Clima 
            image: AssetImage("assets/background/bg-ensolarado.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  // String Estado
                  "São Paulo",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontFamily: "Lucida",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  // String dia da semana
                  "Domingo",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lucida",
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "20 de Dezembro de 2020", 
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lucida",
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "08:21",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lucida",
                  ),
                ),
              ),
              
              // Fim Inicio

              // Inicio Icon Clima
              Container(
                height: 325,
                child: Image(
                  image: AssetImage("assets/image/sol-pequeno.png"),
                ),
              ),
              // Fim Icon Clima

              Center(
                child: Text(
                  "ENSOLARADO",
                  style: TextStyle(
                    fontFamily: "Lucida",
                    fontSize: 36,
                    color: Colors.white,
                  ),  
                ),
              ),

              // Fim Clima

              SizedBox(
                height: 85,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 36,
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "30°",
                  style: TextStyle(
                    fontFamily: "Lucida",
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 36,
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Minima: 25°",
                  style: TextStyle(
                    fontFamily: "Lucida",
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
