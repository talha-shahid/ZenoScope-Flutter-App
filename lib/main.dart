import 'package:flutter/material.dart';
import 'package:new_project/components/bottomNavigationBar.dart';
import 'package:new_project/views/homepage.dart';
// import 'package:new_project/views/homePage.dart';
import 'package:new_project/views/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zenoscope ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomeView2(),
      home: Bottom(),
    );
  }
}
