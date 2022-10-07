import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(
  fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
  brightness: Brightness.dark,
  backgroundColor: kprimevoid,
);

TextStyle kName = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  fontFamily: GoogleFonts.openSans().fontFamily,
  color: kprimevoid,
);
TextStyle kUsername = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.normal,
  fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
  color: kprimevoid,
);

TextStyle kHeadline = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.bold,
  fontFamily: GoogleFonts.openSans().fontFamily,
  color: kprimemanga,
);
TextStyle kDescription = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.normal,
  fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
  color: kprimemanga,
);

Color kprimemanga = const Color(0xffE5E1E6);
Color kprimevoid = const Color(0xff170F1E);
