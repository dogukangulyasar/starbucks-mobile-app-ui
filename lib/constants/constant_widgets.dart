import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';

final constantAppbar = AppBar(
  backgroundColor: Colors.white,
  centerTitle: false,
  title: Text(
    "Starbucks",
    style: TextStyle(color: HexColor(darkGreen), fontWeight: FontWeight.bold),
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
);
