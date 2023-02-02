import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/models/order_model.dart';
import 'package:starbucks_mobile_app_ui/providers/basket_provider.dart';
import 'package:starbucks_mobile_app_ui/screens/star/widgets/draggable_scrollable.dart';
import 'package:starbucks_mobile_app_ui/screens/star/widgets/money_card.dart';

class StarScreen extends StatefulWidget {
  const StarScreen({super.key});

  @override
  State<StarScreen> createState() => _StarScreenState();
}

class _StarScreenState extends State<StarScreen> {
  @override
  Widget build(BuildContext context) {
    double phoneHeigth = MediaQuery.of(context).size.height;
    double phoneWidth = MediaQuery.of(context).size.width;
    List<Order> orders = Provider.of<BasketProvider>(context).orders;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor(mainGreen),
        onPressed: () {},
        child: const Center(
          child: Text(
            "+",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      body: Stack(
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
                            width: phoneWidth <= 375 ? 120 : 150,
                            height: phoneHeigth <= 675 ? 120 : 150,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                // Order details
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor(white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: Column(
                      children: [
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sipariş detayı",
                                style: TextStyle(
                                    color: HexColor(darkGreen),
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: HexColor(buttonGrey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(7),
                                  child: Text(
                                    "Hazırlanıyor",
                                    style: TextStyle(
                                        color: HexColor(darkGrey),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // TODO: make this image smaller
                            Image.asset("assets/images/coffee_image.png"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hazelnut Coffee",
                                    style: TextStyle(
                                        color: HexColor(dark),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 7),
                                        child: Text("Adet: 2"),
                                      ),
                                      Text("Boyut: Vendi"),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        // TODO: Make location details in here
                        Text("Mağaza adresi")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const HomeDraggableScrollable()
        ],
      ),
    );
  }
}
