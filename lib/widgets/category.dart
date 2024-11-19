import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.title, required this.color, required this.icon});
  final String title;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 106.77,
        height: 39.06,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(19), color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 16.49,),
            Icon(icon, color: Colors.white, size: 24,),
              const SizedBox(width: 5.93,),
             Text(title, style: const TextStyle(color: Colors.white, fontSize: 15)),
             SizedBox(width: 16.49,),
          ],
        ),
      );
  }
}