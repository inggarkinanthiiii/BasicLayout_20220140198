import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Next 7 days",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              return Column(
                children: [
                  Text(
                    ["Now", "17.00", "20.00", "23.00"][index],
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.ac_unit,
                    color: const Color.fromARGB(255, 39, 218, 47),
                  ),
                  Text(
                    "28°C",
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 243, 33, 163),
                    ),
                  ),
                  Icon(
                    Icons.air,
                    color: const Color.fromARGB(255, 27, 140, 168),
                  ),
                  Text(
                    "10 km/h",
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 194, 197, 17),
                    ),
                  ),
                  Icon(
                    Icons.water_drop,
                    color: const Color.fromARGB(255, 42, 15, 119),
                  ),
                  Text("0%", style: TextStyle(fontSize: 16)),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
