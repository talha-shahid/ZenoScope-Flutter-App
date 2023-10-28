import 'package:flutter/material.dart';
import 'package:new_project/views/homepage.dart';
// import 'package:new_project/views/homepage.dart';
import 'package:new_project/views/intro.dart';
// import 'package:new_project/views/homeview2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomeView2(),
      home: HomePage(),
    );
  }
}
