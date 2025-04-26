import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:widgetbook_golden_test/widgets/button.dart';

Future<void> main() async {
  testGoldens('Widgetbook snapshots', (tester) async {
    final builder =
        DeviceBuilder()..overrideDevicesForAllScenarios(
          devices: [Device.phone, Device.iphone11],
        );
    builder.addScenario(
      widget: MaterialApp(
        title: 'VariableButton',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'NotoSansJP', useMaterial3: true),
        home: Scaffold(
          body: Center(
            child: Builder(
              builder: (context) => VariableButton(text: 'Variable Button'),
            ),
          ),
        ),
      ),
      name: 'VariableButton',
    );

    await tester.pumpDeviceBuilder(builder);
    await tester.pumpAndSettle();
    await screenMatchesGolden(tester, 'VariableButton');
  });
}
