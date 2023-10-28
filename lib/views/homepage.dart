import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imageUrls = [
  'assets/images/learning.jpg',
  'assets/images/learning2.jpg',
  'assets/images/learning3.jpg',
];
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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF242F3E), // Start color
            Color(0xFF38354D), // End color
          ],
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            CarouselSlider(
              items: imageUrls.map((imageUrl) {
                return Container(
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 300, // Set the height of the slider
                enlargeCenterPage: true, // Make the center image larger
                autoPlay: true, // Enable auto-play
                autoPlayInterval:
                    Duration(seconds: 4), // Set auto-play interval
              ),
            ),
            Expanded(
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
            ),
          ],
        ),
      ),
    ));
  }
}
