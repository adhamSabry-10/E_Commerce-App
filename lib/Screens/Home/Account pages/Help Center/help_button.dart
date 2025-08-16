import 'package:e_commerce_app/core/Custom%20Widgets/custam_container.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HelpButton extends StatelessWidget {
  final String label;
  final String image;
  final VoidCallback onTap;

  const HelpButton({
    super.key,
    required this.label,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: CustomContainer(
          padding: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 1.5.h),

          borders: true,
          borderCol: AppColors.gray3,
          cir: 8,

          child: Row(
            children: [
              SvgPicture.asset(image, width: 24, height: 24),
              3.w.width,
              CustomText(
                text: label,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
