import 'package:flutter/material.dart';
import 'package:experimentx/WebTester.dart';

void main() =>
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => MyApp(),
      '/Test': (context) => WebTester(),
    },
  ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome?"),
      ),
      body: const Column(children: []),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Simple push navigation
          Navigator.of(context).pushNamed('/Test');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
