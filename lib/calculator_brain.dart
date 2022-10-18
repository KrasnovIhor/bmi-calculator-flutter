import 'dart:math';

import 'constants.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  BMIResults getResults() {
    if (_bmi >= 25) {
      return BMIResults.overweight;
    } else if (_bmi > 18.5) {
      return BMIResults.normal;
    } else {
      return BMIResults.underweight;
    }
  }

  String getInterpretation() {
    BMIResults result = getResults();

    switch (result) {
      case BMIResults.overweight:
        return 'You have a higher than normal body weight. Try to exercise more.';
      case BMIResults.normal:
        return 'You have a normal body weight. Good job!';
      case BMIResults.underweight:
        return 'You have a lower than normal body weight. You can eat a bit more.';
      default:
        return 'Unknown BMI';
    }
  }
}
