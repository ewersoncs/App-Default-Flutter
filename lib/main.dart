import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 58, 12, 134),
                Color.fromARGB(255, 88, 19, 156),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              "Hello World!!!",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        ),
      ),
    ),
  );
}
