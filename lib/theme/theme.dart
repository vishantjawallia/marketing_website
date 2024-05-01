import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketing_website/theme/palette.dart';

class Themes {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Color.fromRGBO(240, 240, 240, 1),
      primaryIconTheme: IconThemeData(color: Colors.white),
      primaryColorDark: Palettes.primary,
      textTheme: ThemeData.light().textTheme.copyWith(
            // headlineMedium:   GoogleFonts.poppins(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w700),

            // titleSmall:   GoogleFonts.poppins(fontSize: 20, color: Colors.black54),
            // titleMedium:   GoogleFonts.poppins(fontSize: 22, color: Colors.black54),
            // titleLarge:   GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black54),
            // //
            // bodyLarge:   GoogleFonts.poppins(fontSize: 18, color: Colors.black),
            // bodyMedium:   GoogleFonts.poppins(fontSize: 16, color: Colors.black),
            // bodySmall:   GoogleFonts.poppins(fontSize: 14, color: Colors.black),
            titleSmall: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
            titleMedium: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
            titleLarge: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
            headlineMedium: GoogleFonts.poppins(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w700),

            //
            bodyLarge: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
            bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
            bodySmall: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
          ),
      fontFamily: 'Poppins',
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      primaryColorDark: Palettes.primary,
      primaryIconTheme: IconThemeData(color: Colors.white),
      textTheme: ThemeData.light().textTheme.copyWith(
            titleSmall: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
            titleMedium: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
            titleLarge: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
            headlineMedium: GoogleFonts.poppins(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700),

            //
            bodyLarge: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
            bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
            bodySmall: GoogleFonts.poppins(fontSize: 12, color: Colors.white),
          ),
      fontFamily: 'Poppins',
    );
  }
}
