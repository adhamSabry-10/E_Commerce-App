import 'package:e_commerce_app/Routes/app_routes.dart';
import 'package:e_commerce_app/Screens/Home/Account%20pages/Account%20Page/account_listtile.dart';
import 'package:e_commerce_app/Screens/Home/Widgets/custom_appbar.dart';
import 'package:e_commerce_app/Screens/Home/Widgets/divider.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  CustomAppBar(text: "Account", image: AppImages.bell),
                  CustomDivider(),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: AccountListtile(
                image: AppImages.myOrder,
                title: "My Orders",
                onTap: () {},
              ),
            ),
            CustomDivider(thick: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  AccountListtile(
                    image: AppImages.myDetails,
                    title: "My Details",
                    onTap: () {},
                  ),
                  CustomDivider(),
                  AccountListtile(
                    image: AppImages.addressBook,
                    title: "Address Book",
                    onTap: () {},
                  ),
                  CustomDivider(),
                  AccountListtile(
                    image: AppImages.paymentMethods,
                    title: "Payment Methods",
                    onTap: () {},
                  ),
                  CustomDivider(),
                  AccountListtile(
                    image: AppImages.notification,
                    title: "Notifications",
                    onTap: () {},
                  ),
                ],
              ),
            ),

            CustomDivider(thick: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  AccountListtile(
                    image: AppImages.fAQs,
                    title: "FAQs",
                    onTap: () {},
                  ),
                  CustomDivider(),
                  AccountListtile(
                    image: AppImages.helpCenter,
                    title: "Help Center",
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.helpCenterPage);
                    },
                  ),
                ],
              ),
            ),
            CustomDivider(thick: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: ListTile(
                leading: SvgPicture.asset(
                  AppImages.logout,
                  color: AppColors.red,
                ),

                title: CustomText(
                  text: "Logout",
                  fontSize: 16,
                  color: AppColors.red,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
