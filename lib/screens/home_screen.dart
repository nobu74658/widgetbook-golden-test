import 'package:flutter/material.dart';
import 'package:widgetbook_golden_test/widgets/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FixedButton(),
            SizedBox(height: 16),
            VariableButton(text: 'Variable Button'),
          ],
        ),
      ),
    );
  }
}
