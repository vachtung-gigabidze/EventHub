import 'package:flutter/material.dart';

class UserRowWidget extends StatelessWidget {
  const UserRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
        SizedBox(
          width: 56,
          child: Stack(children: [
            Positioned(left: 32, child: Image.asset('assets/images/user3.png', width: 24, height: 24,)),
            Positioned(left: 16, child: Image.asset('assets/images/user2.png', width: 24, height: 24,)),
            Image.asset('assets/images/user1.png', width: 24, height: 24,),        
          ],),
        ),
        SizedBox(width: 10,),
        Text("+20 Going", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xff3f38dd)))

    ],);
  }
}