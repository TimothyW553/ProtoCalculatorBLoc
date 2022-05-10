import 'package:equatable/equatable.dart';

abstract class CalculatorEvent extends Equatable {
  const CalculatorEvent();
}

class NumberPressed extends CalculatorEvent {
  final int number;
  const NumberPressed({required this.number});

  @override
  List<Object> get props => [number];
}

class OperationPressed extends CalculatorEvent {
  final String operator;

  const OperationPressed({required this.operator});

  @override
  List<Object> get props => [operator];
}

class EqualPressed extends CalculatorEvent {
  @override
  List<Object> get props => [];
}
