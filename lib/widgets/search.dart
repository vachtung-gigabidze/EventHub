import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 24,
        ),
        const Icon(
          Icons.search_rounded,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "|",
          style: TextStyle(color: Colors.white54),
        ),
        const SizedBox(
          width: 7,
        ),
        const Text("Search...", style: TextStyle(color: Colors.white54)),
        const Spacer(),
        Container(
          width: 75,
          height: 32.14,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.white24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 19.3,
                  width: 19.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Colors.white54),
                  child: const Icon(
                    Icons.filter_list,
                    color: Colors.black87,
                    size: 17,
                  )),
              const SizedBox(
                width: 5.93,
              ),
              const Text("Filters", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
