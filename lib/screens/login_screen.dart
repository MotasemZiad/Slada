import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slada/screens/welcome_screen.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/utils/font_manager.dart';
import 'package:slada/widgets/custom_button.dart';
import 'package:slada/widgets/custom_text_button.dart';
import 'package:slada/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              PositionedDirectional(
                top: -130,
                start: -100,
                child: SvgPicture.asset('assets/svgs/bubble 04.svg'),
              ),
              PositionedDirectional(
                top: -150,
                start: -120,
                child: SvgPicture.asset('assets/svgs/bubble 03.svg'),
              ),
              PositionedDirectional(
                end: -150,
                top: 80,
                child: SvgPicture.asset('assets/svgs/bubble 01.svg'),
              ),
              PositionedDirectional(
                bottom: -200,
                end: -120,
                child: SvgPicture.asset('assets/svgs/bubble 02.svg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 300,
                            bottom: 12,
                          ),
                          child: Text(
                            'Login',
                            style: FontManager.raleway.copyWith(
                              color: ColorManager.black2Color,
                              fontSize: 52,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Good to see you back!",
                              style: FontManager.nunitoSans.copyWith(
                                fontSize: 20,
                                color: ColorManager.black2Color,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Icon(
                              Icons.favorite,
                              color: ColorManager.blackColor,
                              size: 16.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        CustomTextField(
                          label: 'EMAIL',
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          icon: 'assets/svgs/at.svg',
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        CustomTextField(
                          label: 'PASSWORD',
                          controller: _passwordController,
                          isPassword: true,
                          icon: 'assets/svgs/Icon awesome-lock.svg',
                        ),
                        const SizedBox(
                          height: 32.0,
                        ),
                        CustomButton(
                          label: 'Login',
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WelcomeScreen(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Center(
                          child: CustomTextButton(
                            label: 'Cancel',
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
