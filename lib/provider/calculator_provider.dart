import 'package:flutter/material.dart';

import '../utils/color_constants.dart';

class CalculatorProvider extends ChangeNotifier {
  // dynamic data;
  var outcome = "";

  void isMaleFalse(isMale) {
    isMale = false;
    // notifyListeners();
  }

  void isMaleTrue(isMale) {
    isMale = true;
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

  void result(String outcome) {
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
  }
}
