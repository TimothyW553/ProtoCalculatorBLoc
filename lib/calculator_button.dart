import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:protocalculatorbloc/bloc/calculator_bloc.dart';
import 'package:protocalculatorbloc/bloc/calculator_event.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final void Function(String) fn;

  const CalculatorButton({Key? key, required this.text, required this.fn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonTheme(
        height: double.infinity,
        child: SizedBox(
          height: double.infinity,
          child: TextButton(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 37.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () => fn(text)),
        ),
      ),
    );
  }
}
