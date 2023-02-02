import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/models/order_model.dart';
import 'package:starbucks_mobile_app_ui/providers/basket_provider.dart';
import 'package:starbucks_mobile_app_ui/screens/order/widgets/piece_widget.dart';

class ListItem extends StatefulWidget {
  ListItem({
    super.key,
    required this.showPieceWidget,
    required this.title,
    required this.price,
  });
  final String title;
  final int price;
  bool showPieceWidget;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    print(Provider.of<BasketProvider>(context).orders);

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
                  child: Image.asset("assets/images/coffee_image.png"),
                ),
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
                      // Show piece widget
                      if (widget.showPieceWidget)
                        PieceWidget(
                          title: widget.title,
                          onPressed: (order) {
                            // This on pressed method get order details from
                            // child widget and send details to provider in here.
                            setState(() {
                              widget.showPieceWidget = false;
                            });
                            print(order);
                            Provider.of<BasketProvider>(context, listen: false)
                                .addOrder(order);
                          },
                        )
                      else
                        const SizedBox.shrink(),
                    ],
                  ),
                ),
                widget.showPieceWidget != true
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.showPieceWidget = !widget.showPieceWidget;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor(mainGreen)),
                          child: widget.showPieceWidget
                              ? const Icon(Icons.add)
                              : const Text("Ekle"),
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
