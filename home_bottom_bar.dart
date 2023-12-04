import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.brown,
            size: 35,
          ),
          Icon(
            Icons.favorite_outlined,
            color: Colors.brown,
            size: 35,
          ),
          Icon(
            Icons.shopping_bag,
            color: Colors.brown,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: Colors.brown,
            size: 35,
          ),
        ],
      ),
    );
  }
}
