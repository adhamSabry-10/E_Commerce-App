import 'dart:async';
import 'package:e_commerce_app/Routes/app_routes.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, AppRoutes.onbordingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor1,
      body: Stack(
        children: [
          Positioned(
            top: -3.h,
            child: Image.asset(AppImages.elements, fit: BoxFit.fill),
          ),

          Center(child: Image.asset(AppImages.logo)),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: SizedBox(
                height: 5.5.h,
                width: 5.5.h,
                child: const CircularProgressIndicator(
                  strokeWidth: 6,
                  color: Colors.white,
                  backgroundColor: AppColors.primaryColor2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
