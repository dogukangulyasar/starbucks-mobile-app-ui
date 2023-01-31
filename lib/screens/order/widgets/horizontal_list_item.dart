import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/providers/horizontal_screen_provider.dart';

class HorizontalListItem extends StatefulWidget {
  const HorizontalListItem(
      {super.key, required this.title, required this.selected});
  final String title;
  final bool selected;

  @override
  State<HorizontalListItem> createState() => _HorizontalListItemState();
}

class _HorizontalListItemState extends State<HorizontalListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.selected ? HexColor(buttonGrey) : HexColor(white),
          border: Border.all(
            color: widget.selected ? HexColor(white) : HexColor(buttonGrey),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: HexColor(dark),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
