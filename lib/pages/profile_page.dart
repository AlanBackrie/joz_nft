import 'package:flutter/material.dart';
import 'package:joz_nft/theme.dart';
import 'package:joz_nft/widgets/collection_card.dart';
import 'package:joz_nft/widgets/mostexplore_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageProfile() {
      return Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/profile_banner.png',
                        ),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Center(
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                          image: AssetImage('assets/profile.png'))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Alan Bakrie',
                style: blackTextColor.copyWith(fontSize: 22),
              ),
              const SizedBox(height: 5),
              RichText(
                  text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Created by ',
                    style: blackTextColor.copyWith(fontSize: 8),
                  ),
                  TextSpan(
                      text: 'Alan Bakrie',
                      style: blueTextColor.copyWith(fontSize: 8))
                ],
              ))
            ],
          ),
        ],
      );
    }

    Widget itemCollection() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 65,
        ),
        child: Row(
          children: [
            itemCollectionCard(
              jum: '17.7K',
              desk: 'Items',
            ),
            itemCollectionCard(
              jum: '11.2K',
              desk: 'Ouners',
            ),
            itemCollectionCard(
              jum: '17.7K',
              desk: 'Floor Price',
            ),
          ],
        ),
      );
    }

    Widget Collection() {
      return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.88,
          crossAxisCount: 2,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 13),
              height: 200,
              // width: 170,
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
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            imageProfile(),
            itemCollection(),
            Collection(),
          ],
        ),
      ),
    );
  }
}
