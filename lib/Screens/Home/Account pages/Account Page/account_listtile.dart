import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart' show AppColors;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountListtile extends StatelessWidget {
  final String image;
  final String title;
    final VoidCallback onTap;
  const AccountListtile({super.key, required this.image, required this.title, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image, color: AppColors.black),
      title: CustomText(text: title, fontSize: 16),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: AppColors.gray1,
      ),
      onTap: onTap,
    );
  }
}
