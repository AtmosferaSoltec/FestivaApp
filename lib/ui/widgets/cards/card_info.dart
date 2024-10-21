import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorDark.withOpacity(0.4),
      child: Container(
        width: double.infinity,
        height: 54,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              Icon(
                Icons.calendar_month,
                size: 16,
                color: colorT1,
              ),
              SizedBox(width: 4),
              Text(
                "Fecha",
                style: TextStyle(
                    color: colorT1, fontSize: 14, fontWeight: FontWeight.w900),
              )
            ]),
            Text(
              "13/11/2021",
              style: TextStyle(fontSize: 14, color: colorT2),
            )
          ],
        ),
      ),
    );
  }
}
