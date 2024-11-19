import 'package:even_hub/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 156,
              child: Stack(children: [
                Container(
                  height: 135,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color(0xff4a43ec),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      LocationWidget(),
                      SizedBox(
                        height: 16,
                      ),
                      SearchWidget(),
                    ],
                  ),
                ),
                const Positioned(
                    bottom: 0, width: 375, child: CategoryRowWidget())
              ]),
            ),
            const SizedBox(
              height: 21.58,
            ),
            const SizedBox(
              width: 375,
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Upcoming Events",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 375,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    EventCard(
                      imagePath: 'assets/images/hands.png',
                    ),
                    EventCard(imagePath: 'assets/images/foot.png'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 375,
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Nearby You",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 375,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    EventCard(imagePath: 'assets/images/foot.png'),
                    EventCard(
                      imagePath: 'assets/images/hands.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
