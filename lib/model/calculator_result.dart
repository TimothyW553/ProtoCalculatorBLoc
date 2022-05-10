import 'package:equatable/equatable.dart';

class CalculatorResult extends Equatable {
  /// "intermediate" result of calculation
  final int? number;

  /// Type of operation
  final String? operation;

  /// Double result to perform calculations on
  final double? result;
  final bool? shouldCalculate;

  const CalculatorResult(
      {this.number, this.operation, this.result, this.shouldCalculate});

  @override
  List<Object?> get props => [number, operation, result, shouldCalculate];

  CalculatorResult copy({
    int? number,
    String? displayResult,
    String? operation,
    double? result,
    bool? shouldCalculate,
  }) {
    return CalculatorResult(
      number: number ?? this.number,
      operation: operation ?? this.operation,
      result: result ?? this.result,
      shouldCalculate: shouldCalculate ?? this.shouldCalculate,
    );
  }
}
