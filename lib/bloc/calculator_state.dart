import 'package:equatable/equatable.dart';

class CalculatorState extends Equatable {
  final _buffer = [0.0, 0.0];
  String _operation = "";
  String _result = "0";
  int _bufferIndex = 0;

  String get operation => _operation;
  String get result => _result;
  int get bufferIndex => _bufferIndex;

  void applyCommand(String cmd) {
    if (cmd == "+" || cmd == "-" || cmd == "*" || cmd == "/" || cmd == "=") {
      _setOperation(cmd);
    } else {
      _addDigit(cmd);
    }
  }

  void _setOperation(String operation) {
    bool isEqualSign = operation == "=";
    if (_bufferIndex == 0) {
      if (!isEqualSign) {
        _operation = operation; // leave as is
        _bufferIndex++; // move to next integer
      }
    } else {
      double calculationResult = _calculate(_buffer[0], _buffer[1]);
      _buffer[0] = calculationResult;
      _buffer[1] = 0.0;
      _result = calculationResult.toString();
      _operation = isEqualSign ? "" : operation;
      _bufferIndex = isEqualSign ? 0 : 1;
    }
  }

  double _calculate(double op1, double op2) {
    switch (_operation) {
      case "+":
        return op1 + op2;
      case "-":
        return op1 - op2;
      case "*":
        return op1 * op2;
      case "/":
        return op1 / op2;
      default:
        return op1;
    }
  }

  void _addDigit(String digit) {
    final shouldWipe = _result == "0";
    final currentResult = shouldWipe ? "" : _result;
    _result = currentResult + digit;
    _buffer[_bufferIndex] = double.parse(_result);
  }

  @override
  List<Object> get props => [_result];
}
