import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "28°C",
          style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Divider(thickness: 1, color: Colors.grey),
        Text("Sunny", style: TextStyle(fontSize: 20, color: Colors.grey)),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit, color: Colors.blue),
            SizedBox(width: 5),
            Text("5 km/h", style: TextStyle(fontSize: 18, color: Colors.blue)),
          ],
        ),
      ],
    );
  }
}
