import 'package:even_hub/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: 375,
          
          child: Column(
            children: [
              
              Stack(children: [
                Image.asset('assets/images/party.png',width: 375,
          height: 244,),
                Positioned(
            bottom: 13,
            right: 14.32,
            child: Container(height: 36, width: 36, decoration: BoxDecoration(color: Color(0xFF979797), borderRadius: BorderRadius.circular(10)),
            child: const Icon(Icons.bookmark, color: Colors.white, size: 18,),
            )),
              ],),
            Padding(
              padding: const EdgeInsets.only(left:  24.0),
              child: Column(
                children: [
                  const  SizedBox(height: 50,),
              const Text("International Band Music Concert", textAlign: TextAlign.left, style: TextStyle(fontSize: 35),),
              const  SizedBox(height: 18,),
                         
              Row(
                children: [
                  Container( height: 48, width: 48, 
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.calendar_month, color: Color(0xFF5669FF), size: 26,),
                  ),
                  SizedBox(width: 14,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text("14 Decenber, 2021", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Tuesday? 4:00PM - 9:00PM", style: TextStyle(fontSize: 12),),
                  ],)
                ],
              ),
              const  SizedBox(height: 18,),
              Row(
                children: [
                  Container( height: 48, width: 48, 
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.location_pin, color: Color(0xFF5669FF), size: 26,),
                  ),
                  SizedBox(width: 14,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text("Gala Convention Center", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("36 Guild Street London, UK", style: TextStyle(fontSize: 12),),
                  ],)
                ],
              ),
              const  SizedBox(height: 18,),
              Row(
                children: [
                  Container( height: 48, width: 48, 
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(borderRadius: BorderRadius.circular(10.0), child: Image.asset('assets/images/organizer.png')),
                  ),
                  SizedBox(width: 14,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text("Ashfak Sayem", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Organizer", style: TextStyle(fontSize: 12),),
                  ],)
                ],
              ),
              const  SizedBox(height: 18,),
              Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("About Event", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              const  SizedBox(height: 18,),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", style: TextStyle(fontSize: 16)),
                 ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}