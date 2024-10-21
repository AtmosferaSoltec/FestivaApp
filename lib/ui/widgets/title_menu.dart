import 'package:flutter/material.dart';

import '../theme/styles.dart';

class TitleMenu extends StatelessWidget {
  String title;
  String subtitle;

  TitleMenu({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Styles.largeTitleBold,
            ),
            Text(subtitle, style: Styles.callout)
          ],
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
      ],
    );
  }
}
