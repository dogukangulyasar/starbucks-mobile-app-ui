import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_mobile_app_ui/constants/bottom_nav_bar.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/providers/screen_provider.dart';
import 'package:starbucks_mobile_app_ui/screens/order/order_screen.dart';
import 'package:starbucks_mobile_app_ui/screens/star/star_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = const [
    StarScreen(),
    OrderScreen(),
    OrderScreen(),
    OrderScreen()
  ];

  List<String> appBarTitles = const [
    "Starbukcs",
    "Sipariş Yarat",
    "Sipariş Detayı",
    "Navigasyon"
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndex =
        Provider.of<ScreenProvider>(context, listen: true).currentIndex;
    return Scaffold(
      appBar: AppBar(
        leading: currentIndex == 2
            ? GestureDetector(
                onTap: () {
                  // Set screen provider's current index to 1 to show order screen
                  Provider.of<ScreenProvider>(context, listen: false)
                      .setCurrentIndex(1);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: HexColor(darkGreen),
                ),
              )
            : null,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          appBarTitles.elementAt(currentIndex),
          style: TextStyle(
              color: HexColor(darkGreen), fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print("Clicked notifications");
            },
            child: Icon(
              Icons.notifications_none_rounded,
              color: HexColor(darkGreen),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                print("More clicked");
              },
              child: Icon(
                Icons.more_vert,
                color: HexColor(darkGreen),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: HexColor(background),
      bottomNavigationBar: const BottomNavBar(),
      body: Center(child: screens.elementAt(currentIndex)),
    );
  }
}
