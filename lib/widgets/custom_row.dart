import 'package:flutter/material.dart';
import 'package:slada/utils/font_manager.dart';

import '../utils/color_manager.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    Key? key,
    required this.leading,
    this.trailing,
    this.onTap,
  }) : super(key: key);
  final String leading;
  final String? trailing;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          leading,
          style: FontManager.raleway.copyWith(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: ColorManager.black2Color,
          ),
        ),
        const Spacer(),
        trailing == null
            ? const SizedBox()
            : Row(
                children: [
                  Text(
                    trailing ?? "",
                    style: FontManager.raleway.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.black2Color,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const CircleAvatar(
                      backgroundColor: ColorManager.primaryColor,
                      radius: 14.0,
                      foregroundColor: ColorManager.whiteColor,
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
