import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:widgetbook4_workspace/widgets/fixed_button.stories.dart';

Future<void> main() async {
  testGoldens('widgetbook snapshots', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(
        devices: [
          Device.phone,
          Device.iphone11,
        ],
      )
      ..addScenario(
        widget: FixedButtonScenario(
          name: 'Primary',
          story: $Primary,
        ),
      );

    await tester.pumpDeviceBuilder(builder);
    await tester.pumpAndSettle();
    await screenMatchesGolden(tester, 'fixed button');
  });
}
