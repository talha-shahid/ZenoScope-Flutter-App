import 'package:flutter/material.dart';
import 'package:new_project/components/carousal.dart';
import 'package:new_project/components/explore.dart';

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
            //Carousal
            carousalSlider(),
            //Explore Text
            // Container(
            //   margin: EdgeInsets.only(top: 46.0),
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Icon(
            //               Icons.explore, // Replace with the icon you want
            //               color: Colors.white.withOpacity(0.7),
            //               size: 36, // Adjust the size as needed
            //             ),
            //           ),
            //           Text(
            //             "Explore", // Your desired text here
            //             style: TextStyle(
            //                 fontSize: 36,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.white.withOpacity(0.7)),
            //           ),
            //         ],
            //       ),
            //       Text(
            //         "Choose the world you want", // Your desired subtitle text here
            //         style: TextStyle(
            //             fontSize: 16,
            //             color: Colors.white.withOpacity(0.7),
            //             letterSpacing: 1.0),
            //       ),
            //     ],
            //   ),
            // ),
            //Cards
            Explore(),
            // bottomNavigationBar()
          ],
        ),
      ),
    ));
  }
}
