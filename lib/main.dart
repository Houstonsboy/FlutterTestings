import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 200.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 70, 214, 26),
                          borderRadius: BorderRadius.circular(100 / 0),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 200.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 70, 214, 26),
                          borderRadius: BorderRadius.circular(100 / 0),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 200.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 70, 214, 26),
                          borderRadius: BorderRadius.circular(100 / 0),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 200.0,
                  width: 500.0,
                  color: Colors.indigoAccent,
                  child: Text("Welcome"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 200.0,
                  width: 500.0,
                  color: Colors.indigoAccent,
                  child: Text("Welcome"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 200.0,
                  width: 500.0,
                  color: Colors.indigoAccent,
                  child: Text("Welcome"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 200.0,
                  width: 500.0,
                  color: Colors.indigoAccent,
                  child: Text("Welcome"),
                ),
              )
            ]))
          ]),
        ),
      ),
    );
  }
}
