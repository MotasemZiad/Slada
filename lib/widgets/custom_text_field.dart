import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/color_manager.dart';
import '../utils/font_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    required this.controller,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.icon,
    this.isPassword = false,
  }) : super(key: key);

  final String label;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isPassword;
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      onChanged: onChanged,
      obscureText: isPassword,
      decoration: InputDecoration(
        label: Text(
          label,
          style: FontManager.nunitoSans.copyWith(
            color: ColorManager.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: icon == null
              ? const SizedBox(
                  width: 0,
                  height: 0,
                )
              : SvgPicture.asset(
                  icon!,
                  height: 14.0,
                  width: 14.0,
                ),
        ),
      ),
    );
  }
}
