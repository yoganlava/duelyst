import 'package:flutter/animation.dart';

enum ThemeColors { lightest, lightDark, darker, darkest }

extension ThemeColorsExtension on ThemeColors {
  Color get color {
    switch (this) {
      case ThemeColors.lightest:
        return const Color(0xFFE3E9FF);
      case ThemeColors.lightDark:
        return const Color(0xFF3D4D8F);
      case ThemeColors.darker:
        return const Color(0xFF293462);
      case ThemeColors.darkest:
        return const Color(0xFF151A33);
    }
  }
}
