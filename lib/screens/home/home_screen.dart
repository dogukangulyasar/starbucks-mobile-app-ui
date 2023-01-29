import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';
import 'package:starbucks_mobile_app_ui/constants/constant_widgets.dart';
import 'package:starbucks_mobile_app_ui/screens/coffee/coffee_screen.dart';
import 'package:starbucks_mobile_app_ui/screens/star/start_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> screens = const [
    StarScreen(),
    CoffeeScreen(),
    CoffeeScreen(),
    CoffeeScreen()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: HexColor(background),
        appBar: constantAppbar,
        // TODO: use provider and move this to another widet
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: HexColor(darkGrey),
                spreadRadius: 0,
                blurRadius: 5,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.red,
              onTap: _onItemTapped,
              currentIndex: _currentIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                // Star navbar item
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.star_border,
                    color: HexColor(mainGreen),
                  ),
                  icon: Icon(
                    Icons.star_border,
                    color: HexColor(darkGreen),
                  ),
                  label: "Star",
                ),
                // Coffee navbar item
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.coffee_outlined,
                    color: HexColor(mainGreen),
                  ),
                  icon: Icon(
                    Icons.coffee_outlined,
                    color: HexColor(darkGreen),
                  ),
                  label: "Coffee",
                ),
                // Credit Card navbar item
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.credit_card,
                    color: HexColor(mainGreen),
                  ),
                  icon: Icon(
                    Icons.credit_card,
                    color: HexColor(darkGreen),
                  ),
                  label: "Credit Card",
                ),
                // Navigation navbar item
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.location_on_outlined,
                    color: HexColor(mainGreen),
                  ),
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: HexColor(darkGreen),
                  ),
                  label: "Navigation",
                ),
              ],
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
            backgroundColor: HexColor(mainGreen),
            onPressed: () {},
            child: const Center(
              child: Text(
                "+",
                style: TextStyle(fontSize: 35),
              ),
            )),
        body: Center(child: screens.elementAt(_currentIndex)),
      ),
    );
  }
}
