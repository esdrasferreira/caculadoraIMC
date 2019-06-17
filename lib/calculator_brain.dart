import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.altura, this.peso});

  final double altura;
  final int peso;

  double _imc;

  String calculateIMC() {
    _imc = peso / pow(altura, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25) {
      return 'Acima do peso';
    } else if (_imc >= 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return 'Você está acima do peso. Lembre de fazer exercícios.';
    } else if (_imc >= 18.5) {
      return 'Seu peso está normal. Parabéns!';
    } else {
      return 'Abaixo do peso, vc pode comer um pouco mais!';
    }
  }
}
