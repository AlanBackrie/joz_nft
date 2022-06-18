import 'package:flutter/material.dart';
import 'package:joz_nft/theme.dart';

class itemCollectionCard extends StatelessWidget {
  String jum;
  String desk;

  itemCollectionCard({required this.desk, required this.jum});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 70,
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              jum,
              style: blackTextColor,
            ),
            Text(
              desk,
              style: blackTextColor.copyWith(fontSize: 10),
            )
          ],
        ));
  }
}
