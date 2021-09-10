import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkey_meal/screens/home.dart';
import 'package:monkey_meal/screens/splashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.cabinTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Dashboard(),
    );
  }
}

