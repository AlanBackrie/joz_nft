import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Color blackColor = const Color(0xff000000);
Color pinkColor = const Color(0xffDB64D6);
Color purpleColor = const Color(0xff4A227C);
Color whiteColor = const Color(0xffFFFFFF);
Color blueColor = const Color(0xff418993);
Color greyColor = Color(0xACAEAEB3);

TextStyle blackTextColor = GoogleFonts.aclonica()
    .copyWith(fontWeight: FontWeight.bold, color: blackColor);
TextStyle whiteTextColor = GoogleFonts.aclonica()
    .copyWith(fontWeight: FontWeight.bold, color: whiteColor);
TextStyle blueTextColor = GoogleFonts.aclonica()
    .copyWith(fontWeight: FontWeight.w600, color: blueColor);
TextStyle greyTextColor = GoogleFonts.aclonica()
    .copyWith(fontWeight: FontWeight.w600, color: greyColor);
