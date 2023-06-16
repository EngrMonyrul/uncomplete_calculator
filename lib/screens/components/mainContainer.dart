import 'package:flutter/material.dart';

Container mainContainer(Size bodySize) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(20),
    height: bodySize.height,
    width: bodySize.width,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 5),
        borderRadius: const BorderRadius.all(Radius.circular(25))),
  );
}
