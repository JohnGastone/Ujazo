import 'package:flutter/material.dart';

import '../constant.dart';

class KaziZaMwishoHeader extends StatelessWidget {
  const KaziZaMwishoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Text(
              "Kazi ya Mwisho ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.card_giftcard,
              color: Colors.grey,
              size: 18,
            )
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "18 Julai 2023",
              style: TextStyle(
                  fontSize: 16,
                  color: kDarkBlue,
                  height: 2,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
