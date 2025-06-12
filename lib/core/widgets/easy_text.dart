import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EasyText extends StatelessWidget {
  const EasyText({
    super.key,
    required this.text,
    required this.fontFamily,
     this.color,
    required this.fontSize,
    required this.fontWeight,
  });

  final String text;
  final String fontFamily;
  final Color ?color;
  final double fontSize;

  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.getFont(
          fontFamily,
          color: color,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
        ));
  }
}
