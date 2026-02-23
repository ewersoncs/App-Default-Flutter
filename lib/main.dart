import 'package:first_app/gradient_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
