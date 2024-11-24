import 'package:flutter/material.dart';

import '../utils/color_constants.dart';

class CalculatorProvider extends ChangeNotifier {
  // dynamic data;
  var outcome = "";

  bool isMale = true;

  void toggleGender(bool maleSelected) {
    isMale = maleSelected;
    notifyListeners();
  }

  void heightCalculate(value) {
    height = value;
    notifyListeners();
  }

  void weightCalculateIncrease() {
    weight++;
    notifyListeners();
  }

  void weightCalculateDecrease() {
    if (weight > 1) {
      weight--;
    }
    notifyListeners();
  }

  void ageCalculateIncrease() {
    age++;
    notifyListeners();
  }

  void ageCalculateDecrease() {
    if (age > 1) {
      age--;
    }
    notifyListeners();
  }

  String result() {
    double h = height / 100;
    double w = weight;
    double heightSquare = h * h;

    double result = w / heightSquare;
    if (result >= 25) {
      outcome = "Over Weight";
    } else if (result >= 18) {
      outcome = "Normal";
    } else {
      outcome = "Under Weight";
    }
    notifyListeners();
    return outcome;
  }
}
