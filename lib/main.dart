import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_mobile_app_ui/providers/basket_provider.dart';
import 'package:starbucks_mobile_app_ui/providers/horizontal_screen_provider.dart';
import 'package:starbucks_mobile_app_ui/providers/screen_provider.dart';
import 'package:starbucks_mobile_app_ui/screens/home/home_screen.dart';
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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ScreenProvider()),
          ChangeNotifierProvider(
              create: (context) => HorizontalScreenProvider()),
          ChangeNotifierProvider(
            create: (context) => BasketProvider(),
          )
        ],
        child: const Scaffold(body: HomeScreen()),
      ),
    );
  }
}
