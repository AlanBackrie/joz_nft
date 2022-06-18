import 'package:flutter/material.dart';
import '../theme.dart';

class topNftCard extends StatelessWidget {
  final int numC;
  final String imageUrl;
  final String name;
  final String price;
  final String subImage;

  topNftCard(
      {required this.numC,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.subImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24),
      width: 300,
      height: 47,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: pinkColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            numC.toString(),
            style: blackTextColor.copyWith(fontSize: 16),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(name, style: blackTextColor),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    subImage,
                    width: 10,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    price,
                    style: blackTextColor,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
