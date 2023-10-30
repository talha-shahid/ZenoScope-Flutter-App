import 'package:flutter/material.dart';

final List<Map<String, dynamic>> jsonData = [
  {
    "title": "Experiments",
    "image": "assets/images/Experiments.png",
  },
  {
    "title": "Algorithms",
    "image": "assets/images/Algorithms.png",
  },
  // Add more JSON items as needed
];

class Explore extends StatelessWidget {
  const Explore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: jsonData.length,
        itemBuilder: (context, index) {
          final item = jsonData[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5, // Adjust the elevation as needed
              shadowColor: Colors.blue,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    child: Image.asset(
                      item["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: Text(
                      item["title"],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
