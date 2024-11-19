import 'package:even_hub/widgets/category.dart';
import 'package:flutter/material.dart';

class CategoryRowWidget extends StatelessWidget {
  const CategoryRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 375,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 24,
            ),
            CategoryWidget(
                title: "Sports",
                color: Color(0xfff0635a),
                icon: Icons.sports_basketball),
            SizedBox(
              width: 11.28,
            ),
            CategoryWidget(
                title: "Music",
                color: Color(0xfff59762),
                icon: Icons.music_note),
            SizedBox(
              width: 11.28,
            ),
            CategoryWidget(
                title: "Food", color: Color(0xff29d697), icon: Icons.food_bank),
            SizedBox(
              width: 11.28,
            ),
            CategoryWidget(
                title: "Art",
                color: Color(0xff46CDFB),
                icon: Icons.paid_outlined),
            SizedBox(
              width: 24,
            ),
          ],
        ),
      ),
    );
  }
}
