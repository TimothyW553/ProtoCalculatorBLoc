import 'package:equatable/equatable.dart';
import 'package:protocalculatorbloc/model/calculator_result.dart';

abstract class CalculatorState extends Equatable {
  final CalculatorResult calculatorResult;

  const CalculatorState({required this.calculatorResult});

  @override
  List<Object> get props => [calculatorResult];
}

class CalculatorInitialState extends CalculatorState {
  const CalculatorInitialState()
      : super(calculatorResult: const CalculatorResult());
}

class CalculatorHasChanged extends CalculatorState {
  @override
  final CalculatorResult calculatorResult;

  const CalculatorHasChanged({required this.calculatorResult})
      : super(calculatorResult: calculatorResult);
}
