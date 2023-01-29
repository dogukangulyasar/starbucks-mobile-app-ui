import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/screens/star/draggable_scrollable.dart';
import 'package:starbucks_mobile_app_ui/screens/star/money_card.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: MoneyCard(),
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // First col
                    Column(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            "assets/images/coffee_process.png",
                          ),
                        )
                      ],
                    ),
                    // Middle column
                    // This intrinsicwidth used for the share the width of the
                    // column to the nested row.
                    IntrinsicWidth(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/gold_star.png"),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Yıldız bakiyesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Last column
                    // That instrinsicwidth is used for getting column
                    // width inside to the first row widget to use mainaxisalignment.
                    IntrinsicWidth(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.coffee_outlined),
                                Text(
                                  "0",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )
                              ],
                            ),
                            // Ikram icecek text
                            const Text(
                              "İkram içecek",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Detaylar button
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: HexColor(buttonGrey),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Detaylar",
                                  style: TextStyle(
                                    color: HexColor(darkGrey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const HomeDraggableScrollable()
      ],
    );
  }
}
