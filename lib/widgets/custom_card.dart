import 'package:flutter/material.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/utils/font_manager.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.image,
    required this.label,
    required this.text,
    this.button,
  }) : super(key: key);
  final String image;
  final String label;
  final String text;
  final Widget? button;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        side: BorderSide.none,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 48.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: FontManager.raleway.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.black2Color,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  text,
                  style: FontManager.nunitoSans.copyWith(
                    color: ColorManager.blackColor,
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              button ??
                  const SizedBox(
                    height: 80,
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
