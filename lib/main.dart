import 'package:flutter/material.dart';
import 'package:flutterin8hour/screens/home_page.dart';
import 'package:flutterin8hour/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lobster().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LogInPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LogInPage()
      },
    );
  }
}
