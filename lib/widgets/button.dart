import 'package:flutter/material.dart';

class VariableButton extends StatelessWidget {
  const VariableButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}

class FixedButton extends StatelessWidget {
  const FixedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Fixed Button'),
    );
  }
}
