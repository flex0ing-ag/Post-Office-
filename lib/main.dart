import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'pages/loginpage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Make the key optional
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(), //we can't have route default SLASH indicating to homepage and Home : homepage together
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: "/home",
      routes: {
        "/": (context) => const LoginPage(), //default route
        "/home" : (context)=> const HomePage(),
        "/login" : (context) => const LoginPage()
      },
    );  
  }
}
