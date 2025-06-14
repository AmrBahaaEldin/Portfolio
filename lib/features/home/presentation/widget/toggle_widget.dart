import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';
import 'package:portfolio/core/widgets/easy_text.dart';

class ToggleWidgets extends StatelessWidget {
  const ToggleWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 182.h,
        right: 108.w,
      ),
      padding: EdgeInsets.only(
        right: 27.w,
        left: 28.w,
        top: 33.h,
        bottom: 32.h,
      ),
      decoration: BoxDecoration(
        color: LightColor.backgroundHomeColor,
        border: Border.all(
          width: 3.w,
          color: LightColor.broderColor,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 71.w,
            height: 66.h,
            decoration: BoxDecoration(
              color: LightColor.backGroundSliderSelect,
              borderRadius: BorderRadius.all(
                Radius.circular(6.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.person_solid),
                EasyText(
                    text: "About",
                    fontFamily: Fonts.poppins,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            width: 71.w,
            height: 66.h,
            decoration: BoxDecoration(
              color: LightColor.backGroundSliderUnSelect,
              borderRadius: BorderRadius.all(
                Radius.circular(6.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.award),
                EasyText(
                    text: "Experience",
                    fontFamily: Fonts.poppins,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            width: 71.w,
            height: 66.h,
            decoration: BoxDecoration(
              color: LightColor.backGroundSliderUnSelect,
              borderRadius: BorderRadius.all(
                Radius.circular(6.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.laptopCode),
                EasyText(
                    text: "Projects",
                    fontFamily: Fonts.poppins,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            width: 71.w,
            height: 66.h,
            decoration: BoxDecoration(
              color: LightColor.backGroundSliderUnSelect,
              borderRadius: BorderRadius.all(
                Radius.circular(6.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.brain),
                EasyText(
                    text: "Skills",
                    fontFamily: Fonts.poppins,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            width: 71.w,
            height: 66.h,
            decoration: BoxDecoration(
              color: LightColor.backGroundSliderUnSelect,
              borderRadius: BorderRadius.all(
                Radius.circular(6.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.envelope),
                EasyText(
                    text: "Contact",
                    fontFamily: Fonts.poppins,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ],
            ),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}