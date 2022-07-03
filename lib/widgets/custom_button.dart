import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/font_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.width = 335,
    this.height = 62,
    this.backgroundColor = ColorManager.primaryColor,
    this.fontColor = ColorManager.whiteColor,
    this.marginVertical = 0.0
  }) : super(key: key);
  final void Function() onTap;
  final String label;
  final Color? backgroundColor;
  final Color? fontColor;
  final double width;
  final double height;
  final double marginVertical;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: marginVertical,
        ),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            label,
            style: FontManager.nunitoSans.copyWith(
              fontSize: 22.0,
              fontWeight: FontWeight.w300,
              color: fontColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
