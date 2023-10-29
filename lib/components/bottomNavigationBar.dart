import 'package:flutter/material.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ]);
  }
}
