import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:joz_nft/theme.dart';
import 'package:joz_nft/widgets/topnft_Card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(41, 60, 41, 0),
            height: 37,
            width: 332,
            decoration: BoxDecoration(
              color: const Color(0x00666666),
              border: Border.all(width: 1, color: Colors.pink),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.pink),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Explore Collections',
            style: blackTextColor.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 14),
          Stack(
            children: [
              Container(
                width: 414,
                height: 242,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/banner.png'),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Discover, Collect,\nEven sell NFT’S',
                    style: whiteTextColor.copyWith(fontSize: 27),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(150, 154, 110, 49),
                width: 111,
                height: 40,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    '      Sell',
                    style: whiteTextColor.copyWith(fontSize: 14),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(90, 154, 170, 49),
                width: 111,
                height: 40,
                decoration: BoxDecoration(
                  color: pinkColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  'Discover',
                  style: whiteTextColor.copyWith(fontSize: 14),
                )),
              ),
            ],
          )
        ],
      );
    }

    Widget topNft() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Top Performing NFT’S',
              style: blackTextColor.copyWith(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          topNftCard(
              numC: 1,
              imageUrl: 'assets/top.png',
              name: 'Mutant Ape Yatch Club',
              subImage: 'assets/ethereum.png',
              price: '0,2 eth'),
          const SizedBox(
            height: 10,
          ),
          topNftCard(
              numC: 2,
              imageUrl: 'assets/top.png',
              name: 'Monkey Asuu',
              subImage: 'assets/ethereum.png',
              price: '0,1 eth'),
          const SizedBox(
            height: 10,
          ),
          topNftCard(
              numC: 3,
              imageUrl: 'assets/top2.png',
              name: 'CryptoPunks',
              subImage: 'assets/ethereum.png',
              price: '0,08 eth'),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    }

    Widget nftUpdate() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xff342341),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 24),
              child: Text(
                'NFT’S Updates.',
                style: whiteTextColor.copyWith(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 24),
              child: Text(
                'NFT Valued over 400K',
                style: blackTextColor.copyWith(fontSize: 16),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: const Text(
                        'CyrptoPunks, moves ahead as they succeed to sell over 400k of NF...'),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/model.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      // backgroundColor: blackColor,
      body: SafeArea(
        child: ListView(
          children: [header(), topNft(), nftUpdate()],
        ),
      ),
    );
  }
}
