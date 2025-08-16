import 'package:e_commerce_app/Screens/Home/Account%20pages/Help%20Center/help_button.dart';
import 'package:e_commerce_app/Screens/Home/Widgets/custom_appbar.dart';
import 'package:e_commerce_app/Screens/Home/Widgets/divider.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(text: "Help Center", image: AppImages.bell),
              CustomDivider(),
              2.h.height,
              HelpButton(
                label: "Customer Service",
                image: AppImages.helpCenter,
                onTap: () {},
              ),
              HelpButton(
                label: "Whatsapp",
                image: AppImages.whatsapp,
                onTap: () {},
              ),
              HelpButton(
                label: "Website",
                image: AppImages.webSite,
                onTap: () {},
              ),
              HelpButton(
                label: "Facebook",
                image: AppImages.faceBook,
                onTap: () {},
              ),
              HelpButton(
                label: "Twitter",
                image: AppImages.twitter,
                onTap: () {},
              ),
              HelpButton(
                label: "Instagram",
                image: AppImages.instagram,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
