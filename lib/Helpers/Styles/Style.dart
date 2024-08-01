import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomColors {
  static const Color backgroundColor = Color.fromRGBO(24, 24, 32, 1);
  static const Color gradient1 = Color.fromRGBO(187, 63, 221, 1);
  static const Color gradient2 = Color.fromRGBO(251, 109, 169, 1);
  static const Color gradient3 = Color.fromRGBO(255, 159, 124, 1);
  static const Color borderColor = Color.fromRGBO(52, 51, 67, 1);
  static const Color whiteColor = Colors.white;
  static const Color blueColor = Color(0xff6B99E4);
  static const Color switchActiveColor = Color(0xff595a70);
  static const Color lightBlueColor = Color(0xfff1f5fd);
  static const Color iconLightColor = Color(0xffF8F8F8);
  static const Color iconDarkColor = Color(0xff0E0E11);
  static const Color socialIconLightColor = Color(0xffF8F8F8);
  static const Color socialIconDarkColor = Color(0xff1c1c1c);
  static const Color cardDarkColor = Color(0xff18181B);
}

class CustomThemes {
  static ThemeData lightMode = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xffF8F8F8),
      colorSchemeSeed: const Color(0xffF8F8F8));

  static ThemeData darkMode = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xff0E0E11),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0E0E11)),
      drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff0E0E11)),
      colorSchemeSeed: const Color(0xff0E0E11));
}
