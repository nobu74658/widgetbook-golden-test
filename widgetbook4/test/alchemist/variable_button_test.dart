import 'package:alchemist/alchemist.dart';
import 'package:widgetbook4_workspace/widgets/variable_button.stories.dart';

void main() {
  goldenTest(
    VariableButtonComponent.name,
    fileName: VariableButtonComponent.name,
    builder: () => GoldenTestGroup(
      children: [
        VariableButtonScenario(
          name: 'Primary',
          story: $Primary,
        ),
      ],
    ),
  );
}
