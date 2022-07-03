import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:slada/screens/auth/login_screen.dart';
import 'package:slada/screens/auth/register_screen.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/utils/font_manager.dart';
import 'package:slada/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 2,
          ),
          Container(
            width: 135,
            height: 135,
            padding: const EdgeInsets.all(38),
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 1),
                    color: Colors.black26,
                    blurRadius: 10,
                  ),
                ]),
            child: SvgPicture.asset(
              'assets/svgs/logo.svg',
              height: 60,
              width: 58,
            ),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Slada',
              style: FontManager.raleway.copyWith(
                fontSize: 52.0,
                fontWeight: FontWeight.bold,
                color: ColorManager.black2Color,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 62),
            child: Text(
              'Beautiful eCommerce UI Kit for your online store',
              style: FontManager.nunitoSans.copyWith(
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
                color: ColorManager.black2Color,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          CustomButton(
            label: "Let's get started",
            onTap: () {
              Get.to(
                () => const RegisterScreen(),
              );
            },
          ),
          const SizedBox(
            height: 18.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I already have an account",
                style: FontManager.nunitoSans.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  color: ColorManager.black2Color,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.to(
                    () => const LoginScreen(),
                  );
                },
                icon: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.primaryColor,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: ColorManager.whiteColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
