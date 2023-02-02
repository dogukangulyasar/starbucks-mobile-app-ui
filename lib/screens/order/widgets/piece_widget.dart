import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/models/order_model.dart';

class PieceWidget extends StatefulWidget {
  const PieceWidget({super.key, required this.title, required this.onPressed});
  final String title;
  final Function(Order order) onPressed;

  @override
  State<PieceWidget> createState() => _PieceWidgetState();
}

class _PieceWidgetState extends State<PieceWidget> {
  final List<String> dropdownValues = ['Venti', 'Grande', 'Tall'];
  int piece = 1;
  String dropdownValue = "";
  @override
  void initState() {
    dropdownValue = dropdownValues.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: HexColor(buttonGrey),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        if (piece > 0) piece -= 1;
                      }),
                      child: Text(
                        "-",
                        style:
                            TextStyle(fontSize: 20, color: HexColor(darkGrey)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        piece.toString(),
                        style:
                            TextStyle(fontSize: 19, color: HexColor(darkGrey)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        piece += 1;
                      }),
                      child: Text(
                        "+",
                        style:
                            TextStyle(fontSize: 20, color: HexColor(darkGrey)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DropdownButton(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: HexColor(darkGrey),
            ),
            value: dropdownValue,
            items: dropdownValues.map<DropdownMenuItem>((String val) {
              return DropdownMenuItem(
                value: val,
                child: Text(val),
              );
            }).toList(),
            onChanged: ((value) {
              setState(() {
                dropdownValue = value;
              });
            }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: () {
                  widget.onPressed(Order(
                      title: widget.title, piece: piece, size: dropdownValue));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor(mainGreen)),
                child: const Icon(Icons.add)),
          )
        ],
      ),
    );
  }
}
