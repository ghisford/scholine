import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scholine/screens/add_child.dart';
import 'package:scholine/screens/registration_screnn.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: _buildTheme(Brightness.light),
    home: const PickChild(),
    // routes: {homePageRoute: (context) => const HomePage(),},
  ));
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.ralewayTextTheme(baseTheme.textTheme),
  );
}
