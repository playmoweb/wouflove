import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

abstract class WoufTheme {
  static Color black = Color(0xFF080A0F);
  static Color white = Color(0xFFFFFFFF);
  static Color primary = Color(0xFF0017E5);

  static ThemeData theme = ThemeData(
    primaryColor: primary,
    backgroundColor: black,
    scaffoldBackgroundColor: black,
    appBarTheme: AppBarTheme(
      backgroundColor: black,
      foregroundColor: black,
      elevation: 0,
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.raleway(
        fontSize: SMALL_TITLE_SIZE,
        color: white,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: GoogleFonts.raleway(
        fontSize: MEDIUM_BODY_SIZE,
        color: white,
        fontWeight: FontWeight.w500
      ),
      bodySmall: GoogleFonts.raleway(
        fontSize: SMALL_BODY_SIZE,
        color: white,
        fontWeight: FontWeight.w500
      ),
    ),
  );
}
