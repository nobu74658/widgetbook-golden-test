import 'package:alchemist/alchemist.dart';
import 'package:widgetbook_workspace/cool_button.stories.dart';

void main() {
  goldenTest(
    CoolButtonComponent.name,
    fileName: CoolButtonComponent.name,
    builder: () => GoldenTestGroup(
      children: [
        CoolButtonScenario(
          name: 'Primary',
          story: $Primary,
          // modes: [ThemeMode(ThemeData.dark())],
          // args: CoolButtonArgs.fixed(
          //  foo: 'bar',
          // ),
        ),
      ],
    ),
  );
}
