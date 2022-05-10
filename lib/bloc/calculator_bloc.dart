import 'package:protocalculatorbloc/bloc/calculator_event.dart';
import 'package:protocalculatorbloc/bloc/calculator_state.dart';
import 'package:protocalculatorbloc/model/calculator_result.dart';
import 'package:bloc/bloc.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(const CalculatorInitialState());

  Stream<CalculatorState> mapEventToState(CalculatorEvent event) async* {
    if (event is NumberPressed) {
      yield await _mapNumberPressedToState(event);
    }

    if (event is OperationPressed) {
      yield await _mapOperationPressedToState(event);
    }

    if (event is EqualPressed) {
      yield* _mapEqualPressedToState(event);
    }
  }

  Future<CalculatorState> _mapNumberPressedToState(NumberPressed event) async {
    final CalculatorResult model = state.calculatorResult;

    if (model.result != null) {
      final CalculatorResult newModel = model.copy(
        number: event.number,
      );

      return CalculatorHasChanged(calculatorResult: newModel);
    }

    if (model.number == null) {
      final CalculatorResult newModel = model.copy(
        number: event.number,
      );

      return CalculatorHasChanged(calculatorResult: newModel);
    }
  }
}
