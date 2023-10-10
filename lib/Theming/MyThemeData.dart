import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffB7935F);
  static Color darkPrimary = Color(0xff141A2E);
  static Color blackColor = Color(0xff242424);
  static Color yellow = Color(0xffFACC1D);

  static ThemeData liteMode = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,

      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: Color(0xff242424),
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.w700,
          fontSize: 25,
          color: Color(0xffFFFFFF),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Color(0xff242424),
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: primaryColor, size: 30),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,

      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: Color(0xffFACC1D),
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.w700,
          fontSize: 25,
          color: Color(0xffFACC1D),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Color(0xffffffff),
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff141A2E),
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xffFACC1D),
        unselectedItemColor: Color(0xffF8F8F8),
      ));
}
