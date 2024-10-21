import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/styles.dart';

class ItemPreferencia extends StatelessWidget {
  IconData icon;
  String title;
  String? subtitle;
  bool isVisible;
  Color color;
  Widget? page;

  ItemPreferencia(
      {super.key,
      required this.icon,
      required this.title,
      this.subtitle,
      this.isVisible = true,
      this.color = colorT1,
      this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (page != null) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page!));
        }
      },
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: colorFondo3),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: colorFondo4),
                  child: Icon(
                    size: 20,
                    icon,
                    color: color,
                  )),
              const SizedBox(width: 8),
              Text(title, style: Styles.callout.copyWith(color: color)),
              const Spacer(),
              if (subtitle != null)
                Text(subtitle!, style: Styles.callout.copyWith(color: colorT2)),
              const SizedBox(width: 8),
              if (isVisible)
                const Icon(
                  size: 20,
                  Icons.arrow_right,
                  color: colorT1,
                )
            ],
          ),
        ),
      ),
    );
  }
}
