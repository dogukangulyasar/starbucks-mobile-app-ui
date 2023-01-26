import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_mobile_app_ui/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.inter().fontFamily),
      debugShowCheckedModeBanner: true,
      home: const Scaffold(body: LoginScreen()),
    );
  }
}
