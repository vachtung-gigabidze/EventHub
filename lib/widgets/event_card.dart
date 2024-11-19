import 'package:even_hub/widgets/users_row.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 255,
      width: 237,
      child: Column(children: [
        Stack(children: [
          Image.asset(imagePath,width: 218, height: 131,),
          Positioned(
            top: 8,
            left: 8,
            child: Container(height: 46.68, width: 45, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text("10", style: TextStyle(color: Color(0xfff0635a), fontSize: 20, fontWeight: FontWeight.w900),),
            Text("JUNE", style: TextStyle(color: Color(0xfff0635a), fontSize: 12, ),),],),
            )),
          Positioned(
            top: 8,
            right: 8,
            child: Container(height: 30, width: 30, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Icon(Icons.bookmark, color: Color(0xfff0635a), size: 18,),
            )),
        ],),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [
              const Text("International Band Mu...", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 10,),
          const UserRowWidget(),
          const SizedBox(height: 10,),
          const Row(children: [Icon(Icons.location_on, color: Color(0xff716e90),), SizedBox(width: 5,), Text("36 Guild Street London, UK")],)
            ],
          ),
        ),
      ],),
    );
  }
}