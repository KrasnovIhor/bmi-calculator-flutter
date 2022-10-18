import 'package:flutter/material.dart';

enum Genders { male, female }

enum CalcOps { add, minus }

enum BMIResults {
  overweight,
  normal,
  underweight,
}

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w700,
);
const kLargeButtonStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
const kTtitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);
const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);
const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInactivekActiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);
const kSliderActiveColor = kBottomContainerColor;
const kSliderThumbColor = kBottomContainerColor;
const kSliderOverlayColor = Color(0x15EB1555);
const kSliderInActiveColor = Color(0xFF8D8E98);
const kIconButtonFillColor = Color(0xFF4C4F5E);
const kMinHeight = 120.0;
const kMaxHeight = 240.0;
