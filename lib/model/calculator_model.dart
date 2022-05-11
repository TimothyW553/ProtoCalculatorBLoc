import 'package:equatable/equatable.dart';
// use: https://pub.dev/packages/freezed for copyWith
// since model.copy(number: null) doesn't actually make number null

enum Operation { plus, minus, multiply, divide }

class CalculatorModel extends Equatable {
  /// number entered by user
  final int? number;

  /// Type of operation
  final Operation? operation;

  /// Double result to perform calculations on
  final int? result;
  final bool? shouldCalculate;

  const CalculatorModel(
      {this.number, this.operation, this.result, this.shouldCalculate});

  @override
  List<Object?> get props => [number, operation, result, shouldCalculate];

  CalculatorModel copyWith({
    int? number,
    Operation? operation,
    int? result,
    bool? shouldCalculate,
  }) {
    return CalculatorModel(
      number: number ?? this.number,
      operation: operation ?? this.operation,
      result: result ?? this.result,
      shouldCalculate: shouldCalculate ?? this.shouldCalculate,
    );
  }
}
