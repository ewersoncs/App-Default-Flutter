import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          title: Text(
            "First App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GradientContainer(
          Color.fromARGB(255, 58, 12, 134),
          Color.fromARGB(255, 88, 19, 156),
        ),
      ),
    ),
  );
}

// Se for da maneira 1 seria assim.
// Assim chamaria o construtor personalizado
// body: GradientContainer.purple()
