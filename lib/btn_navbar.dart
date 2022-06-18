import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:joz_nft/pages/home_page.dart';
import 'package:joz_nft/pages/profile_page.dart';
import 'package:joz_nft/pages/search_page.dart';
import 'package:joz_nft/theme.dart';

class btnNavBar extends StatefulWidget {
  @override
  _btnNavBarState createState() => _btnNavBarState();
}

class _btnNavBarState extends State<btnNavBar> {
  var currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();

      case 1:
        return const searchPage();

      case 2:
        return const ProfilePage();

      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget customButtomNavBar() {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                iconColor: currentIndex == 0 ? Colors.blue : blackColor,
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                iconColor: currentIndex == 1 ? Colors.blue : blackColor,
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                iconColor: currentIndex == 2 ? Colors.blue : blackColor,
              ),
            ],
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: customButtomNavBar(),
      body: body(),
    );
  }
}
