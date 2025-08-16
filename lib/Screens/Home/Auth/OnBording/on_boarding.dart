import 'package:e_commerce_app/Screens/Auth/Login%20and%20Signup/signup.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/main_button.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    5.h.height,
                    CustomText(
                      text: 'Define\nyourself in\nyour unique\nway.',
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      lineHeight: 0.9,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 8.h,
              child: Image.asset(AppImages.element1, fit: BoxFit.fill),
            ),
            Positioned(
              top: 8.h,
              right: 0,
              bottom: 5.h,
              child: Image.asset(AppImages.onBordingImage),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: MainCustomButton(
              title: "Get Started",
              backColour: AppColors.black,
              isImageLeft: false,
              image: AppImages.rightArrow,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
            ),
          ),

          4.h.height,
        ],
      ),
    );
  }
}
