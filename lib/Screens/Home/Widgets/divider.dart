import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomDivider extends StatelessWidget {
  final double? thick;
  const CustomDivider({super.key, this.thick = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        1.h.height,
        Divider(height: 1, color: AppColors.gray3, thickness: thick),
      ],
    );
  }
}
