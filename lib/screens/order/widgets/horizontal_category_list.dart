import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/providers/horizontal_screen_provider.dart';
import 'package:starbucks_mobile_app_ui/screens/order/widgets/horizontal_list_item.dart';

class HorizontalCategoryList extends StatefulWidget {
  const HorizontalCategoryList({super.key});

  @override
  State<HorizontalCategoryList> createState() => _HorizontalCategoryListState();
}

class _HorizontalCategoryListState extends State<HorizontalCategoryList> {
  @override
  Widget build(BuildContext context) {
    int index = Provider.of<HorizontalScreenProvider>(context).index;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 20),
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () =>
                  Provider.of<HorizontalScreenProvider>(context, listen: false)
                      .setIndex(0),
              child: HorizontalListItem(
                selected: index == 0 ? true : false,
                title: "Çok Satanlar",
              ),
            ),
            GestureDetector(
              onTap: () =>
                  Provider.of<HorizontalScreenProvider>(context, listen: false)
                      .setIndex(1),
              child: HorizontalListItem(
                selected: index == 1 ? true : false,
                title: "Yiyecek",
              ),
            ),
            GestureDetector(
              onTap: () =>
                  Provider.of<HorizontalScreenProvider>(context, listen: false)
                      .setIndex(2),
              child: HorizontalListItem(
                selected: index == 2 ? true : false,
                title: "Kahveler",
              ),
            ),
            GestureDetector(
              onTap: () =>
                  Provider.of<HorizontalScreenProvider>(context, listen: false)
                      .setIndex(3),
              child: HorizontalListItem(
                selected: index == 3 ? true : false,
                title: "Termoslar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
