import 'package:flutter/material.dart';
import 'package:joz_nft/pages/home_page.dart';
import 'btn_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: btnNavBar(),
    );
  }
}
