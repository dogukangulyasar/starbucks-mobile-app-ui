import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';

class MoneyCard extends StatelessWidget {
  const MoneyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          // TODO: Find full image of the background,
          // image and put it at the left side
          image: AssetImage("assets/images/money_card_background.png"),
        ),
        color: HexColor(mainGreen),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 354,
      height: 119,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Toplam Param",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "55.43 TL",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                GestureDetector(
                  onTap: () {
                    print("Yukleme yap clicked");
                  },
                  child: const Text(
                    "Yükleme Yap ->",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
