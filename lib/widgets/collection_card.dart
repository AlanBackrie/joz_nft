import 'package:flutter/material.dart';

import '../theme.dart';

class collectionCard extends StatelessWidget {
  const collectionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Container(
        height: 200,
        width: 170,
        decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Column(
          children: [
            Image.asset(
              'assets/collection.png',
              width: 170,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '88888',
                  style: whiteTextColor.copyWith(fontSize: 10),
                ),
                Text(
                  '0.2 eth',
                  style: whiteTextColor.copyWith(fontSize: 10),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
