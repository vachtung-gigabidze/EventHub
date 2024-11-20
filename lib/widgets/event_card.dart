import 'package:even_hub/screens/event_details_screen.dart';
import 'package:even_hub/widgets/users_row.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child: SizedBox(
        height: 255,
        width: 237,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  imagePath,
                  width: 218,
                  height: 131,
                ),
                Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      height: 46.68,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "10",
                            style: TextStyle(
                                color: Color(0xfff0635a),
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "JUNE",
                            style: TextStyle(
                              color: Color(0xfff0635a),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.bookmark,
                        color: Color(0xfff0635a),
                        size: 18,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Text("International Band Music Concert",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 18)),
                  SizedBox(
                    height: 10,
                  ),
                  UserRowWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff716e90),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("36 Guild Street London, UK")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const EventDetailsScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
