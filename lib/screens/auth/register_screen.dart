import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:slada/screens/home/home_screen.dart';
import 'package:slada/utils/color_manager.dart';
import 'package:slada/utils/font_manager.dart';
import 'package:slada/widgets/custom_button.dart';
import 'package:slada/widgets/custom_image_picker.dart';
import 'package:slada/widgets/custom_text_button.dart';
import 'package:slada/widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
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
                end: -150,
                top: 80,
                child: SvgPicture.asset('assets/svgs/bubble 01.svg'),
              ),
              PositionedDirectional(
                top: -200,
                start: -120,
                child: SvgPicture.asset('assets/svgs/bubble 02.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 12,
                ),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 120,
                            bottom: 48,
                          ),
                          child: Text(
                            'Create\nAccount',
                            style: FontManager.raleway.copyWith(
                              color: ColorManager.black2Color,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CustomImagePicker(onTap: () {}),
                        const SizedBox(
                          height: 48.0,
                        ),
                        CustomTextField(
                          label: 'NAME',
                          controller: _nameController,
                          icon: 'assets/svgs/user.svg',
                          keyboardType: TextInputType.name,
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
                          label: 'Register',
                          onTap: () {
                            Get.to(
                              () => const HomeScreen(),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Center(
                          child: CustomTextButton(
                            label: 'Cancel',
                            onTap: () {
                              Get.back();
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
