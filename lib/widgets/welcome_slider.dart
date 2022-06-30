import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/widgets/custom_button.dart';
import 'package:slada/widgets/custom_card.dart';

class WelcomeSlider extends StatelessWidget {
  const WelcomeSlider({
    Key? key,
    required this.cards,
  }) : super(key: key);
  final List<CustomCard> cards;

  @override
  Widget build(BuildContext context) {
    return ValueBuilder<int?>(
      initialValue: 0,
      builder: (currentImage, updater) => Column(
        children: [
          _buildCardPage(updater),
          Container(
            margin: const EdgeInsets.only(top: 12),
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIndicator(
                  true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardPage(ValueBuilderUpdateCallback<int?> updater) {
    return PageView(
        physics: const BouncingScrollPhysics(),
        onPageChanged: updater,
        children: [
          const CustomCard(
            image: 'assets/images/carousel.png',
            label: 'Hello',
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.",
          ),
          const CustomCard(
            image: 'assets/images/carousel.png',
            label: 'Hello',
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.",
          ),
          const CustomCard(
            image: 'assets/images/carousel.png',
            label: 'Hello',
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.",
          ),
          CustomCard(
            image: 'assets/images/carousel.png',
            label: 'Hello',
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.",
            button: CustomButton(
              label: "Let's Start",
              onTap: () {},
            ),
          ),
        ]);
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? ColorManager.primaryColor : ColorManager.skyBlueColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
