import 'package:flutter/material.dart';

class HomeDraggableScrollable extends StatelessWidget {
  const HomeDraggableScrollable({super.key});

  @override
  Widget build(BuildContext context) {
    double phoneHeight = MediaQuery.of(context).size.height;
    return DraggableScrollableSheet(
      initialChildSize: phoneHeight <= 667 ? 0.4 : 0.5,
      minChildSize: phoneHeight <= 667 ? 0.4 : 0.5,
      maxChildSize: 0.9,
      expand: true,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 6),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset("assets/images/draggable_bar.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                  child: Row(
                    children: const [
                      Text(
                        "Kampanyalar",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/draggable_container_bg.png"),
                          fit: BoxFit.fill),
                    ),
                    width: double.infinity,
                    height: 140,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Row(
                    children: const [
                      Text(
                        "Lorem Ipsum",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet gravida quam aliquam aenean fermentum non accumsan.",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
