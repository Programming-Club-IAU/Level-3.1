import 'package:flutter/material.dart';

class DefaultColors {
  static const Color fieldColor = Color.fromARGB(255, 47, 45, 56);
  static const Color fieldOutlineColor = Color.fromARGB(255, 75, 74, 83);

  static const Color blockColor = Color.fromARGB(255, 39, 35, 43);

  // This is done for convenience's sake, I find that matching the blocks outline with the field color gives a nice look
  // so this is just a way for me to avoid having to reset both the block outline and the field color each time I change it
  static const Color blockOutlineColor = fieldColor;
}
