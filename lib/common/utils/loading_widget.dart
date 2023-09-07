import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

SizedBox spinkitWiget() {
  return const SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Stack(
      children: [
        Opacity(
            opacity: .9,
            child: ModalBarrier(dismissible: false, color: Colors.deepPurple)),
        Center(
          child: SpinKitFadingCube(
            color: Colors.orange,
            size: 50.0,
          ),
        ),
      ],
    ),
  );
}

SizedBox threeInOutWiget() {
  return const SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Stack(
      children: [
        ModalBarrier(dismissible: false, color: Colors.white),
        Center(
          child: SpinKitThreeInOut(color: Colors.blue),
        ),
      ],
    ),
  );
}
