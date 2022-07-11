import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scholine/screens/registration_screnn.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: _buildTheme(Brightness.light),
    home: const RegisterView(),
  ));
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.ralewayTextTheme(baseTheme.textTheme),
  );
}
