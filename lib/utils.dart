import 'package:flutter/material.dart';

BoxDecoration roundedRectangle(Color color,
    {Color outlineColor = Colors.black,
    double roundness = 25,
    double outlineThickness = 0.5,
    bool shadow = true,
    Color shadowColor = const Color.fromARGB(60, 0, 0, 0),
    double shadowIntensity = 1,
    bool bloom = true,
    double bloomIntensity = 16}) {
  final List<BoxShadow> shadows = [];

  // Essentially, bloom is just a BoxShadow with the same color of the rectangle and a high blur radius
  if (bloom) {
    BoxShadow bloom = BoxShadow(
      color: color,
      blurRadius: bloomIntensity,
    );

    shadows.add(bloom);
  }

  if (shadow) {
    BoxShadow shadow = BoxShadow(
      color: shadowColor,
      blurRadius: shadowIntensity,
      offset: const Offset(2, 2),
    );

    shadows.add(shadow);
  }

  return BoxDecoration(
    color: color,
    border: Border.all(
      width: 0.5,
      color: outlineColor,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(roundness),
    ),
    boxShadow: shadows,
  );
}
