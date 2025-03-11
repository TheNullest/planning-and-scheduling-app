import 'dart:convert';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';

class MultiAssetsLoader extends AssetLoader {
  final List<String> files = const [
    'assets/translations/en/auth.json',
    'assets/translations/en/common.json',
    'assets/translations/en/settings.json',
    'assets/translations/en/tasks.json',
    'assets/translations/en/ui_elements.json',
    'assets/translations/en/validation.json',
  ];

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async {
    final mergedMap = <String, dynamic>{};

    for (final file in files) {
      final jsonStr = await rootBundle.loadString(file);
      final map = json.decode(jsonStr) as Map<String, dynamic>;
      mergedMap.addAll(map);
    }
    return mergedMap;
  }
}
