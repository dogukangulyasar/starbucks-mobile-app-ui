import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key, required this.title, required this.price});
  final String title;
  final int price;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Image.asset("assets/images/coffee_image.png")),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            color: HexColor(darkGreen),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${widget.price} TL",
                        style: TextStyle(
                            color: HexColor(dark), fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor(mainGreen)),
                    child: const Text("Ekle"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
