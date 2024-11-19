import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( 
                 children: [
                  const SizedBox(width: 29,),
                    const Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Current Location", style: TextStyle(color: Colors.white70, fontSize: 12)),
                            Icon(Icons.arrow_drop_down, color: Colors.white,)
                          ],
                        ),
                             Text("New York, USA", style: TextStyle(color: Colors.white, fontSize: 13)),
                   
                      ],
                    ),
                    const Spacer(),
                 Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(color: Colors.white12, borderRadius: BorderRadius.circular(18)),
                  child: const Icon(Icons.notifications_outlined, color: Colors.white,)
                  
                  ),
                  const SizedBox(width: 22,)
               
                 ],
               )
             ;
  }
}