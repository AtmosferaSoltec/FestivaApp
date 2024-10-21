import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:festiva_flutter/ui/theme/styles.dart';
import 'package:flutter/material.dart';

class PerfilHome extends StatelessWidget {
  const PerfilHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 42,
            height: 42,
            decoration:
            const BoxDecoration(color: colorP1, shape: BoxShape.circle),
            child: const Center(
                child: Text(
                  "IN",
                  style: Styles.title3Bold,
                ))),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Invitado",
              style: Styles.title3Bold.copyWith(height: 1),
            ),
            Text(
              "San Isidro, Lima",
              style: Styles.callout.copyWith(height: 1),
            )
          ],
        )
      ],
    );
  }
}