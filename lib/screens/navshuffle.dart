import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_snap/screens/Tourguide.dart';
import 'package:tour_snap/screens/homescreen.dart';
import 'package:velocity_x/velocity_x.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

// ignore: non_constant_identifier_names
final Screens = [const Home(), const TourGuide()];
dynamic currentindex = 0;

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const Icon(
              CupertinoIcons.bars,
              color: Colors.black,
              size: 36,
            ),
            title: "Tour Snap"
                .text
                .textStyle(GoogleFonts.inconsolata())
                .semiBold
                .size(28)
                .make()),
                body: Screens[currentindex],
        bottomNavigationBar: CurvedNavigationBar(
          color: Vx.gray300,
          animationCurve: Curves.decelerate,
          height: 48,
          backgroundColor: Vx.white,
          items: const [
            CurvedNavigationBarItem(
              child: Icon(
                (Icons.home),
                size: 36,
              ),
            ),
          ],
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
        ));
  }
}
