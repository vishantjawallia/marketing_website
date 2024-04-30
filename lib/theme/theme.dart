import 'package:e_com_flutter_app/theme/palette.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color.fromRGBO(240, 240, 240, 1),
      primaryIconTheme: const IconThemeData(color: Colors.white),
      primaryColorDark: Palettes.primary,
      textTheme: ThemeData.light().textTheme.copyWith(
            // headlineMedium: const TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w700),

            // titleSmall: const TextStyle(fontSize: 20, color: Colors.black54),
            // titleMedium: const TextStyle(fontSize: 22, color: Colors.black54),
            // titleLarge: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black54),
            // //
            // bodyLarge: const TextStyle(fontSize: 18, color: Colors.black),
            // bodyMedium: const TextStyle(fontSize: 16, color: Colors.black),
            // bodySmall: const TextStyle(fontSize: 14, color: Colors.black),
            titleSmall: const TextStyle(fontSize: 14, color: Colors.black),
            titleMedium: const TextStyle(fontSize: 18, color: Colors.black),
            titleLarge: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
            headlineMedium: const TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w700),

            //
            bodyLarge: const TextStyle(fontSize: 16, color: Colors.black),
            bodyMedium: const TextStyle(fontSize: 14, color: Colors.black),
            bodySmall: const TextStyle(fontSize: 12, color: Colors.black),
          ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      primaryColorDark: Palettes.primary,
      primaryIconTheme: const IconThemeData(color: Colors.white),
      textTheme: ThemeData.light().textTheme.copyWith(
            titleSmall: const TextStyle(fontSize: 14, color: Colors.white),
            titleMedium: const TextStyle(fontSize: 18, color: Colors.white),
            titleLarge: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
            headlineMedium: const TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700),

            //
            bodyLarge: const TextStyle(fontSize: 16, color: Colors.white),
            bodyMedium: const TextStyle(fontSize: 14, color: Colors.white),
            bodySmall: const TextStyle(fontSize: 12, color: Colors.white),
          ),
    );
  }
}
