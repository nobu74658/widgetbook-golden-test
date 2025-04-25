import 'package:flutter/material.dart';
import 'package:widgetbook/next.dart' as next;
import 'package:widgetbook/widgetbook.dart';

import 'components.book.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: components,
      addons: [
        next.MaterialThemeAddon({
          'Dark': ThemeData.dark(),
          'Light': ThemeData.light(),
        }),
      ],
    );
  }
}
