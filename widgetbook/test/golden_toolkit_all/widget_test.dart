import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_workspace/main.directories.g.dart';

Future<void> main() async {
  testGoldens('Widgetbook snapshots', (tester) async {
    final items = _loadItems('', directories);

    for (final item in items.entries) {
      final builder =
          DeviceBuilder()..overrideDevicesForAllScenarios(
            devices: [Device.phone, Device.iphone11],
          );
      builder.addScenario(
        widget: MaterialApp(
          title: item.key,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'NotoSansJP', useMaterial3: true),
          home: Scaffold(
            body: Center(child: Builder(builder: item.value.builder)),
          ),
        ),
        name: item.key,
      );

      await tester.pumpDeviceBuilder(builder);
      await tester.pumpAndSettle();
      await screenMatchesGolden(tester, item.key);
    }
  });
}

Map<String, WidgetbookUseCase> _loadItems(
  String path,
  Iterable<WidgetbookNode> useCases,
) {
  final Map<String, WidgetbookUseCase> result = {};
  for (final e in useCases) {
    if (e is WidgetbookFolder && e.children != null) {
      final children = _loadItems('$path/${e.name}', e.children!);
      result.addAll(children);
    } else if (e is WidgetbookLeafComponent) {
      result['$path/${e.name}'] = e.useCase;
    }
  }

  return result;
}
