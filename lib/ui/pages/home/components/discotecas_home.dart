import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:festiva_flutter/ui/theme/styles.dart';
import 'package:festiva_flutter/ui/widgets/cards/card.dart';
import 'package:flutter/material.dart';

class DiscotecasHome extends StatelessWidget {
  const DiscotecasHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Discotecas",
                style: Styles.Headline,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: colorT2),
                child: const Row(children: [
                  Text(
                    "Ver más",
                    style: TextStyle(color: colorT2),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: colorT2,
                  )
                ]),
              )
            ],
          ),
          //const CardDiscoteca()
        ],
      ),
    );
  }
}
