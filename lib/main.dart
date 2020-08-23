import 'package:flutter/material.dart';

void main() {
  runApp(WeatherStorm());
}

class WeatherStorm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherStormHome(),
    );
  }
}

class WeatherStormHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.blue[700], Colors.red[700]],
          )
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 25),
            child: Column(
              children: <Widget>[
                Text(
                  'Date 29.04.20',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
                  decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "New York",
                          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Cloudy",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
