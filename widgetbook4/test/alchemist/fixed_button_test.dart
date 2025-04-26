import 'package:alchemist/alchemist.dart';
import 'package:widgetbook4_workspace/widgets/fixed_button.stories.dart';

void main() {
  goldenTest(
    FixedButtonComponent.name,
    fileName: FixedButtonComponent.name,
    builder: () => GoldenTestGroup(
      children: [
        FixedButtonScenario(
          name: 'Primary',
          story: $Primary,
        ),
      ],
    ),
  );
}
