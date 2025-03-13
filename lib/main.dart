import 'package:flutter/material.dart';
import 'widgets/weather_card.dart';
import 'widgets/forecast_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [Icon(Icons.add, color: Colors.black), SizedBox(width: 10)],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Yogyakarta",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text("Today", style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 10),
            WeatherCard(), // Widget untuk suhu utama
            SizedBox(height: 10),
            ForecastCard(), // Widget untuk prakiraan cuaca
            Spacer(),
          ],
        ),
      ),
    );
  }
}
