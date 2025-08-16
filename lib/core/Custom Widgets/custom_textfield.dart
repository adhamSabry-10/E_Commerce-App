import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
import 'package:e_commerce_app/core/Extension/extension.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final String? labeltext;
  final Widget? starticon;
  final Widget? lasticon;
  final bool? obscur;
  final VoidCallback? fun;
  final bool? focus;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final int? maxLines;
  final double? cir;
  final bool isValid;
  final Function(String)? onChanged;
  final String? titles;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.labeltext,
    this.lasticon,
    this.obscur = false,
    this.starticon,
    this.keyboardType,
    this.fun,
    this.focus = false,
    this.maxLines = 1,
    this.cir = 10,
    this.isValid = true,
    this.onChanged,
    this.titles,
  });

  @override
  _TextfieldcustamState createState() => _TextfieldcustamState();
}

class _TextfieldcustamState extends State<CustomTextField> {
  bool hasText = false;

  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(_checkText);
  }

  void _checkText() {
    final text = widget.controller?.text ?? '';
    if (text.isNotEmpty != hasText) {
      setState(() {
        hasText = text.isNotEmpty;
      });
    }
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_checkText);
    super.dispose();
  }

  OutlineInputBorder _getBorder(bool isValid) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color:
            isValid
                ? Colors.green
                : isValid == false
                ? Colors.red
                : Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: ' ${widget.titles.toString()}',
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
        ),
        0.5.h.height,
        SizedBox(
          height: 7.8.h,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: TextField(
              cursorColor: AppColors.black,
              autofocus: widget.focus!,
              obscureText: widget.obscur!,
              keyboardType: widget.keyboardType,
              onChanged: (value) {
                widget.onChanged?.call(value);
                setState(() {
                  hasText = value.isNotEmpty;
                });
              },
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
              controller: widget.controller,
              maxLines: widget.maxLines,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.gray1,
                ),
                labelText: widget.labeltext,
                prefixIcon: widget.starticon,
                suffixIcon:
                    hasText && widget.isValid == true
                        ? Icon(Icons.check_circle_outline, color: Colors.green)
                        : widget.lasticon,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xffE5E7EB)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xffE5E7EB)),
                ),
                focusedBorder: _getBorder(widget.isValid),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// import 'package:e_commerce_app/core/utils/Themes/app_color.dart';
// import 'package:flutter/material.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:e_commerce_app/core/Custom%20Widgets/custom_text.dart';
// import 'package:e_commerce_app/core/Extension/extension.dart';


// class CustomTextField extends StatefulWidget {
//   final String hintText;
//   final String? labeltext;
//   final Widget? starticon;
//   final Widget? lasticon;
//   final bool? obscur;
//   final VoidCallback? fun;
//   final bool? focus;
//   final TextInputType? keyboardType;
//   final TextEditingController? controller;
//   final int? maxLines; 
//   final double? cir;

//   final String? titles;

//   CustomTextField({
//     required this.hintText,
//     this.controller,
//     this.labeltext,
//     this.lasticon,
//     this.obscur = false,
//     this.starticon,
//     this.keyboardType,
//     this.fun,
//     this.focus = false,
//     this.maxLines = 1, 
//     this.titles,
//     this.cir = 10,
//   });

//   @override
//   _TextfieldcustamState createState() => _TextfieldcustamState();
// }

// class _TextfieldcustamState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CustomText(
//           text: ' ${widget.titles.toString()}',
//           fontSize: 16,
//           color: AppColors.black,
//           fontWeight: FontWeight.w600,
//         ),
//         0.5.h.height,
//         Container(
//           height: 8.h,
//           child: Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: TextField(
//               cursorColor: AppColors.black,
//               autofocus: widget.focus!,
//               obscureText: widget.obscur!,
//               keyboardType: widget.keyboardType,
//               style: TextStyle(
//                 fontSize: 17.sp,
//                 fontWeight: FontWeight.w400,
//                 color: AppColors.black,
//               ),
//               controller: widget.controller,
//               maxLines: widget.maxLines, 
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.all(15),
//                 // const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
//                 hintText: widget.hintText,
//                 hintStyle: TextStyle(
//                   fontSize: 17.sp,
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.gray1,
//                 ),
//                 labelText: widget.labeltext,
//                 prefixIcon: widget.starticon,
//                 suffixIcon: widget.lasticon,
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(widget.cir!),
//                   borderSide: const BorderSide(color: AppColors.gray3),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(widget.cir!),
//                   borderSide: BorderSide(color: AppColors.gray3),
//                 ),
//                 disabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(widget.cir!),
//                   borderSide: const BorderSide(color: AppColors.gray3),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(widget.cir!),
//                   borderSide: const BorderSide(color: AppColors.red),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(widget.cir!),
//                   borderSide: const BorderSide(color: AppColors.red),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }