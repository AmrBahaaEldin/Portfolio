import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/widgets/easy_text.dart';

Widget buildToggleItem(
    BuildContext context, {
      required VoidCallback onTap,
      required Color color,
      required IconData icon,
      required String label,
    }) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 71.w,
      height: 66.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          EasyText(
            text: label,
            fontFamily: Fonts.poppins,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    ),
  );
}