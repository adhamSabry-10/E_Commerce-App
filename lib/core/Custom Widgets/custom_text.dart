import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextDecoration textDecoration;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? lineHeight;
  final String? fontFamily;
  final List<Shadow>? shadows;
  final VoidCallback? fun;

  const CustomText({
    super.key,
    required this.text,
    this.textDecoration = TextDecoration.none,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow = TextOverflow.clip,
    this.letterSpacing,
    this.wordSpacing,
    this.lineHeight,
    this.fontFamily,
    this.shadows,
    this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: maxLines != null ? TextOverflow.ellipsis : overflow,
        style: TextStyle(
          decoration: textDecoration,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          color: color,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          height: lineHeight,
          fontFamily: fontFamily,
          shadows:
              shadows?.isNotEmpty == true
                  ? shadows
                  : null, 
        ),
      ),
    );
  }
}
