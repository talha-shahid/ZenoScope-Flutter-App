import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imageUrls = [
  'assets/images/learning.jpg',
  'assets/images/learning2.jpg',
  'assets/images/learning3.jpg',
];

class carousalSlider extends StatelessWidget {
  const carousalSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
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
        autoPlayInterval: Duration(seconds: 4), // Set auto-play interval
      ),
    );
  }
}
