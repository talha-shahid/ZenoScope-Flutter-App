import 'package:flutter/material.dart';
import 'package:new_project/views/homepage.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Image.asset(
                  'assets/images/logo.png', // Replace with the path to your image
                  width: 150, // Set the width of the image
                  height: 150, // Set the height of the image
                ),
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xFF5775F8),
                      Color(0xFF6A5CFC), // Start color
                      Color(0xFFAA65E6), // End color
                    ],
                  ).createShader(bounds);
                },
                child: Text(
                  'ZENOSCOPE',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.9)),
                ),
              ),
              Text(
                'Online Study Companion',
                style: TextStyle(
                    fontSize: 24, color: Colors.white.withOpacity(0.6)),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the destination screen when the button is pressed.
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue), // Set the background color to blue
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white, // Set the text color to white
                          fontSize: 16, // Set the font size
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white, // Set the arrow icon color
                      ),
                    ],
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
