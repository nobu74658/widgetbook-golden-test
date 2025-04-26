import 'package:alchemist/alchemist.dart';
import 'package:widgetbook_golden_test/widgets/button.dart';

void main() {
  goldenTest(
    "VariableButton",
    fileName: "variable_button",
    builder:
        () =>
            GoldenTestGroup(children: [VariableButton(text: "VariableButton")]),
  );
}
