import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/utils/font_manager.dart';

class ShopSlider extends StatelessWidget {
  const ShopSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/carousel.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        child: Stack(
          children: [
            PositionedDirectional(
              bottom: -150,
              end: -120,
              child: SvgPicture.asset('assets/svgs/bubble 01.svg'),
            ),
            PositionedDirectional(
              bottom: -200,
              start: -100,
              child: Transform.rotate(
                angle: -pi / 2,
                child: SvgPicture.asset('assets/svgs/bubble 01.svg'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 12.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Big Sale",
                    style: FontManager.raleway.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Up to 50%",
                    style: FontManager.nunitoSans.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.black2Color,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 75.0,
                  ),
                  Text(
                    'Happening\nNow',
                    style: FontManager.raleway.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
