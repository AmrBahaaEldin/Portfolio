import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/widgets/easy_text.dart';

class EasyTextFromField extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final double radius;
  final FontWeight fontWeight;

  final double borderSide;
  final Color color;
  final TextInputType? keyboardType;
  final int? minLines;
 final void Function(String)? onChanged;

  final int? maxLines;
  final TextEditingController? controller;

  const EasyTextFromField({

    super.key,
    required this.text,
    required this.fontFamily,
    required this.fontSize,
    required this.radius,
    required this.fontWeight,
    required this.borderSide,
    required this.color,
    this.keyboardType,
    this.minLines,
    this.maxLines,
    this.onChanged,
    this.controller,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller ,
      minLines: minLines,
      maxLines: maxLines,
      onChanged: onChanged,
      keyboardType: keyboardType ?? TextInputType.name,
      decoration: InputDecoration(
        label: EasyText(
            text: text,
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: fontWeight),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius.r),
          borderSide: BorderSide(width: borderSide.w, color: color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius.r),
          borderSide: BorderSide(width: borderSide.w, color: color),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius.r),
          borderSide: BorderSide(width: borderSide.w, color: color),
        ),
      ),
    );
  }
}
