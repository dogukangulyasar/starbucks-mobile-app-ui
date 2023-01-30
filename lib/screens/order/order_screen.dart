import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/screens/order/widgets/list_item_widget.dart';
import 'package:starbucks_mobile_app_ui/screens/order/widgets/packet_details_widget.dart';

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
          const PacketDetails(),
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: Colors.white,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Menu",
                              style: TextStyle(
                                  color: HexColor(darkGreen),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      // TODO: Make horizontal list in here
                      const ListItem(),
                      const ListItem(),
                      const ListItem(),
                      const ListItem(),
                      const ListItem(),
                      const ListItem(),
                      const ListItem(),
                      const ListItem(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
