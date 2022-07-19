import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scholine/screens/add_child.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: _buildTheme(Brightness.light),
    home:  PickChild(),
    // routes: {homePageRoute: (context) => const HomePage(),},
  ));
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.ralewayTextTheme(baseTheme.textTheme),
  );
}
