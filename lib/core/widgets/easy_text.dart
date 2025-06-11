import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class EasyText extends StatelessWidget {
  const EasyText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          color: color,
        ));
  }
}
