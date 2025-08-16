import 'package:e_commerce_app/Screens/Home/Widgets/custom_appbar.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              CustomAppBar(text: "Search", image: AppImages.bell),
              20.h.height,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: SvgPicture.asset(AppImages.searchDuotone)),

                  CustomText(
                    text: "No Results Found!",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  0.5.h.height,
                  CustomText(
                    text: "Try a similar word or something\n more general.",
                    fontSize: 17,
                    color: AppColors.secondaryColor2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
