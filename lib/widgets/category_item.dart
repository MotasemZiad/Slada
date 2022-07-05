import 'package:flutter/material.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/utils/font_manager.dart';
import 'package:slada/widgets/row_images.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.label,
    required this.quantity,
    required this.images,
  }) : super(key: key);
  final List<String> images;
  final String label;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(6.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
        color: ColorManager.whiteColor,
      ),
      child: Column(
        children: [
          RowImages(
            image1: images[0],
            image2: images[1],
          ),
          const SizedBox(
            height: 4.0,
          ),
          RowImages(
            image1: images[2],
            image2: images[3],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: FontManager.raleway.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.black2Color,
                ),
              ),
              Container(
                width: 42,
                height: 24,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  color: ColorManager.skyBlue2Color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FittedBox(
                    child: Text(
                      quantity.toString(),
                      style: FontManager.raleway.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.black2Color,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
