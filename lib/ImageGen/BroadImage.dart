import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class BroadImage extends StatefulWidget {
  const BroadImage({super.key, required this.imgURL, required this.name});

  final String imgURL;
  final String name;
  @override
  @override
  State<BroadImage> createState() => _BroadImageState();
}

class _BroadImageState extends State<BroadImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Container(
      width: 180,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
        color: Colors.grey[200], // Optionally set a background color
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Ensure the image is clipped to the border radius
        child: Image.network(
          widget.imgURL,
          fit: BoxFit.cover,
          width: 180,
          height: 120,
        ),
      ),
    ).px12().py16(),
        Positioned(
           bottom: 16,
      left: 0,
      right: 0,
      child: widget.name.text.color(Vx.white).bold.textStyle(GoogleFonts.inconsolata()).makeCentered())
      ],
    );
  }
}
