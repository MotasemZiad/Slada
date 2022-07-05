import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/utils/font_manager.dart';
import 'package:slada/widgets/custom_row.dart';
import 'package:slada/widgets/shop_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> slidersList = [
    const ShopSlider(),
    const ShopSlider(),
    const ShopSlider(),
    const ShopSlider(),
    const ShopSlider(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    'Shop',
                    style: FontManager.raleway.copyWith(
                      color: ColorManager.black2Color,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 40.0,
                      child: TextField(
                        onTap: () {},
                        cursorHeight: 22.0,
                        cursorColor: ColorManager.primaryColor,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: ColorManager.primaryColor.withOpacity(0.1),
                          hintText: 'Search',
                          contentPadding:
                              const EdgeInsets.only(top: 12, left: 16),
                          hintStyle: FontManager.raleway.copyWith(
                            fontSize: 16,
                            color: ColorManager.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: SvgPicture.asset(
                              'assets/svgs/camera icon.svg',
                              width: 16.0,
                              height: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: slidersList,
                carouselController: _controller,
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: slidersList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      width: _current == entry.key ? 30.0 : 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : ColorManager.primaryColor)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomRow(
                leading: 'Categories',
                trailing: "See All",
                onTap: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              Column(
                children: [
                  Row(
                    children: const [],
                  ),
                  Row(
                    children: const [],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Clothing",
                        style: FontManager.raleway.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.black2Color,
                        ),
                      ),
                      Container(
                        width: 38,
                        height: 20,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                          color: ColorManager.skyBlue2Color,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "109",
                            style: FontManager.raleway.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.black2Color,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
              // GridView.builder(
              //   shrinkWrap: true,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     mainAxisSpacing: 6,
              //     crossAxisSpacing: 6,
              //   ),
              //   itemBuilder: (context, x) => Container(
              //     width: 165,
              //     height: 200,
              //     color: Colors.red,
              //   ),
              //   itemCount: 4,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
