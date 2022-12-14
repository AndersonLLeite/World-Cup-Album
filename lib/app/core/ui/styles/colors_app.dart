import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self isntance
  ColorsApp._();
  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF791435);
  Color get secundary => const Color(0xFFFDCE50);
  Color get yelow => const Color(0xFFFDCE50);
  Color get grey => const Color(0xFFCCCCCC);
  Color get greyDart => const Color(0xFF999999);
}

extension ColorAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
