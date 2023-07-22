import 'package:flutter/material.dart';

import '../constant.dart';

class ActivityHeaderMwezi extends StatelessWidget {
  const ActivityHeaderMwezi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Grafu ya Mwezi",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          children: const [
            Text(
              "Siku",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Wiki",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Mwezi",
              style: TextStyle(color: kDarkBlue),
            )
          ],
        )
      ],
    );
  }
}
