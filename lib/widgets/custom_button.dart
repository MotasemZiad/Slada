import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/font_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.backgroundColor = ColorManager.primaryColor,
    this.fontColor = ColorManager.whiteColor,
  }) : super(key: key);
  final void Function() onTap;
  final String label;
  final Color? backgroundColor;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: 335,
        height: 62,
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
