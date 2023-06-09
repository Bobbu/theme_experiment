import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    titleTextStyle:
        GoogleFonts.bebasNeue(fontSize: 30, color: Colors.grey[800]!),
  ),
  colorScheme: ColorScheme.light(
    background: Colors.grey[400]!,
    primary: Colors.grey[200]!,
    secondary: Colors.grey[300]!,
  ),
  useMaterial3: false,
  hintColor: Colors.grey[300]!,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: Colors.blue,
        width: 2.0,
      ),
    ),
    labelStyle: TextStyle(
      color: Colors.grey[600]!, // Customize color for labelText
    ),
    hintStyle: TextStyle(
      color: Colors.grey[500]!, // Customize color for hintText
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors
                .grey; // the color of the icon when the button is disabled
          }
          return Colors
              .black; // the color of the icon when the button is enabled
        },
      ),
    ),
  ),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.bebasNeue(fontSize: 30),
    displayMedium: GoogleFonts.montserrat(),
    displaySmall: GoogleFonts.montserrat(),
    headlineLarge: GoogleFonts.bebasNeue(fontSize: 30),
    headlineMedium: GoogleFonts.montserrat(),
    headlineSmall: GoogleFonts.montserrat(),
    titleLarge: GoogleFonts.bebasNeue(fontSize: 30),
    titleMedium: GoogleFonts.montserrat(),
    titleSmall: GoogleFonts.montserrat(),
    bodyLarge: GoogleFonts.montserrat(),
    bodyMedium: GoogleFonts.montserrat(),
    bodySmall: GoogleFonts.montserrat(),
    labelLarge: GoogleFonts.montserrat(),
    labelMedium: GoogleFonts.montserrat(),
    labelSmall: GoogleFonts.montserrat(),
  ),
);
