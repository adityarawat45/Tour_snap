import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_snap/ImageGen/BroadImage.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
                height: 85,
                child: TextField(
                  cursorColor: Vx.black,
                  decoration: InputDecoration(
                    fillColor: Vx.gray200,
                    filled: true,
                    // h,
                    contentPadding:
                        const EdgeInsetsDirectional.only(start: 30, end: 12),
                    hintText: "Search",
                    suffixIcon: const Icon(
                      CupertinoIcons.search,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(29),
                        borderSide: BorderSide.none),
                  ),
                ).px32().py16())
            .pOnly(top: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Recommended"
                .text
                .size(16)
                .semiBold
                .textStyle(GoogleFonts.poppins())
                .make(),
            "View More"
                .text
                .size(8)
                .textStyle(GoogleFonts.poppins())
                .make()
                .px12()
          ],
        ).px16(),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              BroadImage(imgURL: "https://www.rishikeshtourism.in/images/banner-3.jpg",name: "Rishikesh",),
              BroadImage(imgURL: "https://mygate.com/wp-content/uploads/2023/08/159.jpg", name: "Goa"),
              BroadImage(imgURL: "https://www.holidify.com/images/bgImages/MANIPUR.jpg", name: "Manipur"),
              BroadImage(imgURL: "https://upload.wikimedia.org/wikipedia/commons/7/70/Neeulm_Valley_AJK_%28Arang_Kel%29.jpg", name: "Kashmir")

            ],
          ),
        )
      ],
    ));
  }
}
