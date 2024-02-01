import 'package:flutter/material.dart';
import 'package:jukebox/ListView.dart';
import 'package:jukebox/Searchicon.dart';

void main() {
  runApp(MyApp());
}

class Artist {
  String name;
  String power;

  Artist(this.name, this.power);
}

class MyApp extends StatelessWidget {
  final List<Artist> artists = [
    Artist("Chris Brown", "Dancing"),
    Artist("Weeknd", "Singing"),
    Artist(" the Creator", "Rapping"),
    Artist("Tyler the Creator", "das"),
    Artist("Tyler  Creator", "Rapping"),
  ];
  final List songs = [
    "kanye West: Famous",
    "aSap rocky: LSD",
    "Jaden: CabinFever",
    "Wakadinali: Marijuana",
    "Chris Brown: Dont be Gone too Long"
  ];
  final List images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8_X5BzAVApWQdDD7qH1U8Abjao55yOLnjqA&usqp=CAU",
    "https://i.pinimg.com/564x/12/7c/18/127c18d337018c197761539e1fdd1d15.jpg",
    "https://i.pinimg.com/474x/e7/72/8d/e7728d7d995be2aecfe8adcc5d2e304a.jpg",
    "https://i.pinimg.com/474x/0e/49/ca/0e49cab497fa5c819a6343de8f1337c4.jpg",
    "https://i.pinimg.com/474x/58/65/ff/5865ff80b2fb2e497642bc8ccad545a0.jpg"
  ];
  final List users = ["Allan", "Gift", "Stacy", "James", "Queen"];
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
          appBar: AppBar(                          //header with title 
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
          body: Column(
            children: [
              Card(             //Stories from ListView.dart
                elevation: 3,
                margin: EdgeInsets.all(10),
                color: Colors.transparent,
                child: Container(
                  height: 150.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Stories(
                          imageUrl: images[index],
                          songTitle: songs[index],
                          username: users[index]);
                    },
                  ),
                ),
              ),
              SizedBox (height: 10.0),
              SearchIcon(),                      //searchicon.dart  Searchbar icon
            ],
          ),
        ),
      ),
    );
  }
}
