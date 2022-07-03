import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:slada/screens/home/home_screen.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/widgets/custom_button.dart';
import 'package:slada/widgets/custom_card.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> cardSliders = [
    const CustomCard(
      image: 'assets/images/carousel.png',
      label: 'Hello',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.',
    ),
    const CustomCard(
      image: 'assets/images/carousel.png',
      label: 'Hello',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.',
    ),
    const CustomCard(
      image: 'assets/images/carousel.png',
      label: 'Hello',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.',
    ),
    CustomCard(
      image: 'assets/images/carousel.png',
      label: 'Ready?',
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      button: CustomButton(
        width: 200,
        height: 50,
        marginVertical: 20,
        label: "Let's Start",
        onTap: () {
          Get.off(() => const HomeScreen());
        },
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              PositionedDirectional(
                top: -150,
                start: -130,
                child: SvgPicture.asset('assets/svgs/bubble 03.svg'),
              ),
              PositionedDirectional(
                bottom: -150,
                end: -120,
                child: SvgPicture.asset('assets/svgs/bubble 02.svg'),
              ),
              PositionedDirectional(
                top: 20,
                bottom: 0,
                start: 0,
                end: 0,
                child: CarouselSlider(
                  items: cardSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    height: MediaQuery.of(context).size.height * 0.75,
                    aspectRatio: 2.0,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                ),
              ),
              PositionedDirectional(
                bottom: 20,
                start: 0,
                end: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: cardSliders.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 4.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              (Theme.of(context).brightness == Brightness.dark
                                      ? Colors.white
                                      : ColorManager.primaryColor)
                                  .withOpacity(
                            _current == entry.key ? 0.9 : 0.4,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
