import 'package:flutter/material.dart';
import 'package:new_project/views/AboutUs.dart';
import 'package:new_project/views/homepage.dart';
import 'package:new_project/views/profilePage.dart';
// import 'package:url_launcher/url_launcher.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List Screen = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: [
                    Color(0xFF5775F8),
                    Color(0xFF6A5CFC),
                    Color(0xFFAA65E6),
                  ],
                ).createShader(bounds);
              },
              child: Text(
                'ZENOSCOPE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.8),
                  size: 32,
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 38, 51, 66),
        elevation: 10,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu,
                    color: Colors.white.withOpacity(0.8),
                    size: 32), // Icon on the opposite side of leading
                onPressed: () {
                  // Open the right-side drawer
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ),
        ],
      ),
      body: Screen[index_color],
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 38, 51, 66),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Align the image to the left
                  children: [
                    Image.asset(
                      'assets/images/logo.png', // Replace with the path to your image
                      width: 150, // Set the width of the image
                      height: 150, // Set the height of the image
                    ),
                    // You can add additional widgets here if needed
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Color.fromARGB(
                    169, 38, 51, 66), // Change the icon color here
              ),
              title: Text(
                'About',
                style: TextStyle(
                    fontSize: 20, // Set the desired font size
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(169, 38, 51, 66) // Make the font bold
                    ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutUs();
                    },
                  ),
                );
              },
            ),
            Column(
              children: [
                Divider(
                  color: Colors.black.withOpacity(0.4), // Border color
                  thickness: 0.5, // Border thickness
                ),
                ListTile(
                  leading: Transform.rotate(
                      angle: -5 * (3.1415926535897932 / 180),
                      child: Icon(
                        Icons.send,
                        color: Color.fromARGB(
                            169, 38, 51, 66), // Change the icon color here
                      )),
                  title: Text(
                    'Contact',
                    style: TextStyle(
                        fontSize: 20, // Set the desired font size
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(
                            169, 38, 51, 66) // Make the font bold
                        ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return AboutUs();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            Column(
              children: [
                Divider(
                  color: Colors.black.withOpacity(0.4), // Border color
                  thickness: 0.5, // Border thickness
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.info,
                    color: Color.fromARGB(
                        169, 38, 51, 66), // Change the icon color here
                  ),
                  title: Text(
                    'Social Media',
                    style: TextStyle(
                        fontSize: 20, // Set the desired font size
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(
                            169, 38, 51, 66) // Make the font bold
                        ),
                  ),
                  children: <Widget>[
                    // Content of the accordion
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Container(
                          child: Icon(
                            Icons.video_library,
                            color: Color.fromARGB(
                                169, 38, 51, 66), // Change the icon color here
                          ),
                        ),
                      ),
                      title: Text(
                        'YouTube',
                        style: TextStyle(
                            fontSize: 17, // Set the desired font size
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(
                                169, 38, 51, 66) // Make the font bold
                            ),
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Icon(
                          Icons.video_library,
                          color: Color.fromARGB(
                              169, 38, 51, 66), // Change the icon color here
                        ),
                      ),
                      title: Text(
                        'Facebook',
                        style: TextStyle(
                            fontSize: 17, // Set the desired font size
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(
                                169, 38, 51, 66) // Make the font bold
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(197, 2, 20, 41),
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_color == 0 ? Colors.black : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 1;
                  });
                },
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: index_color == 1 ? Colors.black : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
