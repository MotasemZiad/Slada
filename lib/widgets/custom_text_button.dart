import 'package:flutter/material.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/utils/font_manager.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.fontColor = ColorManager.black2Color,
  }) : super(key: key);
  final String label;
  final void Function()? onTap;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        textAlign: TextAlign.center,
        label,
        style: FontManager.nunitoSans.copyWith(
          fontSize: 22.0,
          fontWeight: FontWeight.w300,
          color: fontColor,
        ),
      ),
    );
  }
}
