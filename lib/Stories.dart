import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 70, 214, 26),
          borderRadius: BorderRadius.circular(100 / 0),
        ));
  }
}

class MyStories extends StatelessWidget {
  final List Containers = [1, 2, 4, 6, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
          itemCount: Containers.length,
          itemBuilder: (context, index) {
            return Stories();
          }),
    );
  }
}
