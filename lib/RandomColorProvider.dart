
import 'package:random_color/random_color.dart';
import 'package:flutter/material.dart';

class RandomColorProvider{
  static RandomColor _randomColor = RandomColor();

  static randomMagneticShade() {
    return _randomColor.randomColor(
      colorBrightness: ColorBrightness.custom(Range.staticValue(60)),
//      colorHue: ColorHue.custom(Range.staticValue(226))
    );
  }
}