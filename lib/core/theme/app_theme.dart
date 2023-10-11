import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightheme = ThemeData(
      primaryColor: Color(0xffB7935F),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffB7935F),
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 25,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.cinzelDecorative(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ));

  static ThemeData darktheme = ThemeData(
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )));
}
