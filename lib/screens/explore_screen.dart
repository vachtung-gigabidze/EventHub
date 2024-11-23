import 'dart:convert';

import 'package:even_hub/models/models.dart';
import 'package:even_hub/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late Future<Events?> futureEvents;

  @override
  void initState() {
    super.initState();
    futureEvents = fetchEvents();
  }

  Future<Events?> fetchEvents() async {
    final file = await rootBundle.loadString('assets/events.json');

    final events = Events.fromJson(jsonDecode(file) as Map<String, dynamic>);
    return events;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Events?>(
          future: futureEvents,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 210,
                    child: Stack(children: [
                      Container(
                        height: 190,
                        width: 410,
                        decoration: const BoxDecoration(
                          color: Color(0xff4a43ec),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 55,
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
                          bottom: 0, width: 410, child: CategoryRowWidget())
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
                    width: 410,
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
                    width: 410,
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
                    width: 410,
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
            );
          }),
    );
  }
}
