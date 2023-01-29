import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
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
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text("Paketinizi alma zamanı"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: HexColor(buttonGrey),
                                ),
                                const Text("13:00"),
                                Text(
                                  "Değiştir",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: HexColor(dark),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Text("SElam"),
                          ],
                        ),
                      ),
                    ),
                    // Location row
                    Row(
                      children: [],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              child: const Text("As"),
            ),
          ),
        ],
      ),
    );
  }
}
