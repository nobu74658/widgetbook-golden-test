import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_workspace/main.directories.g.dart';

void main() {
  final items = _loadItems('', directories);
  for (final entry in items.entries) {
    goldenTest(
      entry.key,
      fileName: entry.key,
      builder: () => GoldenTestGroup(
        children: [
          Builder(builder: entry.value.builder),
        ],
      ),
    );
  }
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
