import 'package:flutter/material.dart';

Positioned appTitle(Size bodySize, TextStyle GFont) {
  return Positioned(
    top: 10,
    left: bodySize.width * 0.35,
    child: Text(
      'CALCULATOR',
      style: GFont.copyWith(color: Colors.black, fontSize: 20),
    ),
  );
}
