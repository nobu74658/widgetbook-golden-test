import 'package:alchemist/alchemist.dart';
import 'package:widgetbook_golden_test/widgets/button.dart';

void main() {
  goldenTest(
    "FixedButton",
    fileName: "fixed_button",
    builder: () => GoldenTestGroup(children: [FixedButton()]),
  );
}
