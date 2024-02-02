import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jukebox/Inbox.dart';
import 'package:jukebox/Searchicon.dart';
import 'package:jukebox/StoriesTemplate.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
 
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF1E3DE1), Color(0xFFf85187)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            //header with title
            backgroundColor: Colors.transparent,
            title: Text(
              "Welcome to the Disco",
              style: const TextStyle(
                fontSize: 25.0,
                fontFamily: 'Honk-Regular-VariableFont_MORF,SHLN',
                color: Color.fromARGB(255, 159, 181, 63),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                StoriesTemplate(),
                SizedBox(height: 10.0),
                SearchIcon(),
                SizedBox(height: 25.0), //searchicon.dart  Searchbar icon
                Inbox(),
              ],
            ),
          ),
                  bottomNavigationBar: GNav(tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.chat,
              text: 'Chat',
            ),
            GButton(
              icon: Icons.search,
              text: 'Kadmus',
            )
          ]),

        ),
      ),
    );
  }
}
