import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/providers/screen_provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: HexColor(darkGrey),
            spreadRadius: 0,
            blurRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.red,
          onTap: (value) {
            Provider.of<ScreenProvider>(context, listen: false)
                .setCurrentIndex(value);
          },
          currentIndex: Provider.of<ScreenProvider>(context).currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            // Star navbar item
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.star_border,
                color: HexColor(mainGreen),
              ),
              icon: Icon(
                Icons.star_border,
                color: HexColor(darkGreen),
              ),
              label: "Star",
            ),
            // Coffee navbar item
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.coffee_outlined,
                color: HexColor(mainGreen),
              ),
              icon: Icon(
                Icons.coffee_outlined,
                color: HexColor(darkGreen),
              ),
              label: "Coffee",
            ),
            // Credit Card navbar item
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.credit_card,
                color: HexColor(mainGreen),
              ),
              icon: Icon(
                Icons.credit_card,
                color: HexColor(darkGreen),
              ),
              label: "Credit Card",
            ),
            // Navigation navbar item
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.location_on_outlined,
                color: HexColor(mainGreen),
              ),
              icon: Icon(
                Icons.location_on_outlined,
                color: HexColor(darkGreen),
              ),
              label: "Navigation",
            ),
          ],
        ),
      ),
    );
  }
}
