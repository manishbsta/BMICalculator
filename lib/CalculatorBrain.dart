import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 18.5) {
      return 'Underweight';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'Normal';
    } else {
      return 'Overweight';
    }
  }

  String getSuggestion() {
    if (_bmi <= 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
  }
}
