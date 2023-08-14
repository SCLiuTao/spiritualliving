import 'package:flutter/material.dart';

///线性渐变
BoxDecoration get boxLinear {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 61, 64, 243),
        Color.fromARGB(255, 141, 63, 155),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, .75],
    ),
  );
}
