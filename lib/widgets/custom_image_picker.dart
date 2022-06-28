import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slada/utils/color_manager.dart';

class CustomImagePicker extends StatelessWidget {
  const CustomImagePicker({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DottedBorder(
        color: ColorManager.primaryColor,
        dashPattern: const [16, 4],
        borderType: BorderType.Circle,
        padding: const EdgeInsets.all(30),
        strokeWidth: 2,
        child: SvgPicture.asset('assets/svgs/camera icon.svg'),
      ),
    );
  }
}
