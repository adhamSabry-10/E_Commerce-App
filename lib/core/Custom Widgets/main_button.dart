import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';
import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/cupertino.dart';

class MainCustomButton extends StatelessWidget {
  final String title;
  final String? image;
  final VoidCallback onTap;
  final Color? col;
  final Color? textColor;
  final Color? backColour;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? cir;
  final bool isImageLeft;

  const MainCustomButton({
    super.key,
    this.image,
    required this.title,
    required this.onTap,
    this.col,
    this.textColor,
    this.backColour,
    this.borderColor = AppColors.gray1,
    this.width,
    this.height,
    this.cir = 8.0,
    this.isImageLeft = true,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasBackground = backColour != null;
    final bool hasBorder = borderColor != null && backColour == null;

    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: height ?? 6.h,
          width: width ?? double.infinity,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(cir!),
              color: hasBackground ? backColour : null,
              border: hasBorder ? Border.all(color: borderColor!) : null,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (image != null && isImageLeft)
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: SvgPicture.asset(image!),
                  ),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      color:
                          textColor ??
                          (backColour != null ? Colors.white : Colors.black),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                if (image != null && !isImageLeft)
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SvgPicture.asset(image!),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomMainButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? col;
  final Color? textColor;
  final Color? backColour;
  final bool? loading;
  final double? width;
  const CustomMainButton({super.key, 
    required this.title,
    required this.onTap,
    this.col,
    this.textColor = Colors.white,
    this.loading = false,
    this.backColour = AppColors.black,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 6.h,
        width: width,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: AppColors.black,
            backgroundColor: backColour,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: title,
                color: textColor!,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
              3.w.width,
              loading == true
                  ? const CupertinoActivityIndicator(color: AppColors.white)
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
