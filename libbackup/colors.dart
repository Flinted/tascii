import 'package:flutter/material.dart';

class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class
  static const Map<String, Color> magnetic = const <String, Color> {
    'regular': const Color.fromRGBO(40, 54, 99, 1),
    'light': const Color.fromRGBO(42, 75, 137, 1),
    'dark': const Color.fromRGBO(30, 38, 73, 1),
    'extra-dark': const Color.fromRGBO(25, 31, 58, 1),
  };

  static const Map<String, Color> salmon = const <String, Color> {
    'regular': const Color.fromRGBO(244, 130, 107, 1),
    'light': const Color.fromRGBO(255, 160, 142, 1),
    'dark': const Color.fromRGBO(219, 110, 88, 1)
  };

  static const Map<String, Color> mint = const <String, Color> {
    'regular': const Color.fromRGBO(137, 214, 163, 1),
    'light': const Color.fromRGBO(165, 226, 186, 1),
    'cta': const Color.fromRGBO(107, 209, 142, 1), // Custom color for actions only
    'dark': const Color.fromRGBO(84, 191, 121, 1),
  };

  static const Map<String, Color> lilac = const <String, Color> {
    'regular': const Color.fromRGBO(163, 145, 224, 1),
    'light': const Color.fromRGBO(181, 168, 229, 1),
    'dark': const Color.fromRGBO(140, 124, 196, 1),
    'light-bg': const Color.fromRGBO(239, 235, 255, 1),
    'border': const Color.fromRGBO(163, 145, 224, 1),
  };

  static const Map<String, Color> silicon = const <String, Color> {
    'regular': const Color.fromRGBO(220, 220, 220, 1),
    'light': const Color.fromRGBO(250, 250, 250, 1),
    'dark': const Color.fromRGBO(150, 150, 150, 1),
    'semilight': const Color.fromRGBO(235, 235, 235, 1),
    'light-bg': const Color.fromRGBO(247, 247, 247, 1),
    'light-border': const Color.fromRGBO(216, 216, 216, 1),
  };

  static const Map<String, Color> iposdarkblue = const <String, Color> {
    'regular': const Color.fromRGBO(0, 57, 75, 1),
    'light': const Color.fromRGBO(0, 191, 210, 1),
    'dark': const Color.fromRGBO(31, 32, 37, 1)
  };
}