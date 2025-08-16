import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final String image;
  final Widget? child;
  final VoidCallback? leadingTab;

  const CustomAppBar({
    super.key,
    required this.text,
    required this.image,
    this.child,
    this.leadingTab,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
      //  image != null
      //     ? Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 4.w),
      //         child: GestureDetector(
      //           onTap: leadingTab,
      //           child: SvgPicture.asset(
      //             image!,
      //             height: 4.h,
      //             width: 4.w,
      //             fit: BoxFit.contain,
      //           ),
      //         ),
      //       )
      //     : null,
      title: Text(
        text,
        style: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [SvgPicture.asset(image)],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
