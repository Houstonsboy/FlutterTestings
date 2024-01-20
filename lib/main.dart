import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int vote = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            //margin: EdgeInsets.all(20.0),
            child: Text(
              "JukeBox",
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Welcome to the Disco",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Trattatello, fantasy',
                    ),
                  ),
                  Text('$vote',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                      )),
                  Container(
                    child: Icon(Icons.apartment_rounded),
                    width: 100.0,
                    height: 100.0,
                    color: Color.fromARGB(255, 218, 238, 63),
                  )
                ],
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.bike_scooter_sharp),
                label: Text("Welcome"),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    vote += 1;
                  });
                },
                icon: Icon(Icons.home),
                color: Colors.green,
              ),
              Container(
                width: 100.0,
                height: 300.0,
                color: Colors.redAccent,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.airlines),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
