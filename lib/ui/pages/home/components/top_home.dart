import 'package:flutter/material.dart';

class TopHome extends StatelessWidget {
  const TopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
          height: 32, fit: BoxFit.fitHeight, "assets/images/logo_large.png"),
      const Spacer(),
      Container(
        width: 32,
        height: 32,
        decoration: const BoxDecoration(
            color: Color(0xFF00C64F), shape: BoxShape.circle),
        child: const Icon(size: 20, Icons.logout),
      )
    ]);
  }
}