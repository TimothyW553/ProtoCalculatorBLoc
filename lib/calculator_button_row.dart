import 'package:flutter/material.dart';
import 'package:protocalculatorbloc/calculator_button.dart';

class CalculatorButtonsRow extends StatelessWidget {
  final String button1;
  final String button2;
  final String button3;
  final String button4;
  final void Function(String) fn;

  const CalculatorButtonsRow({
    Key? key,
    required this.button1,
    required this.button2,
    required this.button3,
    required this.button4,
    required this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          CalculatorButton(
            text: button1,
            fn: fn,
          ),
          CalculatorButton(
            text: button2,
            fn: fn,
          ),
          CalculatorButton(
            text: button3,
            fn: fn,
          ),
          CalculatorButton(
            text: button4,
            fn: fn,
          ),
        ],
      ),
    );
  }
}
