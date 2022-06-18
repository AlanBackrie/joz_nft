import 'package:flutter/material.dart';
import 'package:joz_nft/theme.dart';

class searchPage extends StatelessWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Text(
              'Explore Collection',
              style: blackTextColor.copyWith(fontSize: 20),
            ),
          )
        ],
      );
    }

    Widget mostexplore() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
            height: 30,
            width: 87,
            decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
              'Trending',
              style: whiteTextColor,
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 30,
            width: 87,
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text('Populer', style: whiteTextColor)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 20),
            height: 30,
            width: 87,
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text('Trending', style: whiteTextColor)),
          ),
        ],
      );
    }

    Widget trending() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: purpleColor,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/populer.png'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: purpleColor,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/populer2.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      );
    }

    Widget trendingW() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: purpleColor,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/populer.png'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: purpleColor,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/populer2.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      );
    }

    Widget favorite() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Similar with your Favourites',
              style: blackTextColor.copyWith(fontSize: 16),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 20),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/populer3.png'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 20),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/populer4.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [header(), mostexplore(), trendingW(), favorite()],
        ),
      ),
    );
  }
}
