import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:protocalculatorbloc/bloc/calculator_bloc.dart';
import 'package:protocalculatorbloc/bloc/calculator_event.dart';

class CalculatorButton extends StatefulWidget {
  final String text;

  const CalculatorButton({Key? key, required this.text}) : super(key: key);

  @override
  State<CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonTheme(
        height: double.infinity,
        child: SizedBox(
          height: double.infinity,
          child: TextButton(
            child: Text(
              widget.text,
              style: const TextStyle(
                fontSize: 37.0,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              setState(() {
                context
                    .read<CalculatorBloc>()
                    .add(CalculatorEvent(command: widget.text));
              });
            },
          ),
        ),
      ),
    );
  }
}
