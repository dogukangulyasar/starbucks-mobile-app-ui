import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';

class PacketDetails extends StatelessWidget {
  const PacketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text Row [Gel Al Seçimi]
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text(
                  "Gel Al Seçimi",
                  style: TextStyle(
                    color: HexColor(dark),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Time row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: HexColor(buttonGrey),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  "Paketinizi alma zamanı",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: HexColor(grey)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.access_time_outlined,
                                color: HexColor(grey),
                              ),
                            ),
                            Text(
                              "13:00",
                              style: TextStyle(
                                color: HexColor(darkGreen),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  print("Clicked değiştir");
                                },
                                child: Text(
                                  "Değiştir",
                                  style: TextStyle(
                                      color: HexColor(darkGreen),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Location row
              Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: HexColor(buttonGrey),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: HexColor(grey),
                                ),
                              ),
                              Text(
                                "Kadıköy, Istanbul",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: HexColor(darkGreen),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    print("Clicked on değiştir location");
                                  },
                                  child: Text(
                                    "Değiştir",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: HexColor(darkGreen),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
