import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // Convert height to meters
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretations(){
    if (_bmi >= 25) {
      return 'You have a higher normal body weight try to exercise more';
    } else if (_bmi >= 18.5) {
      return 'Your have a normal body weight';
    } else {
      return 'Your are MALNUTRIONISHED a lower body weight ,try to eat a bit more';
    }
  }
}
