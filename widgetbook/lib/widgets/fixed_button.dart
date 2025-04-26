import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_golden_test/widgets/button.dart';

@widgetbook.UseCase(name: 'Default', type: FixedButton)
Widget buildFixedButtonUseCase(BuildContext context) {
  return FixedButton();
}
