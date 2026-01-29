import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/images/images.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';
import 'package:portfolio/core/widgets/easy_text.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          top: 37.h,
          left: 54.w,
          right: 62.w,
        ),
        margin: EdgeInsets.only(
          top: 40.h,
          left: 52.w,
          right: 52.w,
        ),
        decoration: BoxDecoration(
          color: LightColor.backgroundHomeColor,
          border: Border.all(
            width: 3.w,
            color: LightColor.broderColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(14.r)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EasyText(
                text: "Skills",
                fontFamily: Fonts.poppins,
                fontSize: 28,
                fontWeight: FontWeight.w700),
            SizedBox(height: 35.h),
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 16.h),
                      height: 79.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.w, color: LightColor.broderColor),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image(
                          image: AssetImage(
                            Images.flutter,
                          ),
                        ),
                      ),
                    ),
                    EasyText(
                        text: "Flutter",
                        fontFamily: Fonts.poppins,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)
                  ],
                ),
                SizedBox(width: 26.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 79.h,
                      width: 85.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 16.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.w, color: LightColor.broderColor),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image(
                          image: AssetImage(
                            Images.fireBase,
                          ),
                        ),
                      ),
                    ),
                    EasyText(
                        text: "FireBase",
                        fontFamily: Fonts.poppins,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)
                  ],
                ),
                SizedBox(width: 26.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 79.h,
                      width: 85.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 16.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.w, color: LightColor.broderColor),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image(
                          image: AssetImage(
                            Images.supaBaseLogo,
                          ),
                        ),
                      ),
                    ),
                    EasyText(
                        text: "supabase",
                        fontFamily: Fonts.poppins,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)
                  ],
                ),
                SizedBox(width: 26.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 79.h,
                      width: 85.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 16.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.w, color: LightColor.broderColor),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image(
                          image: AssetImage(
                            Images.htmlskill,
                          ),
                        ),
                      ),
                    ),
                    EasyText(
                        text: "Html",
                        fontFamily: Fonts.poppins,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)
                  ],
                ),
                SizedBox(width: 26.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 79.h,
                      width: 85.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 16.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.w, color: LightColor.broderColor),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image(
                          image: AssetImage(
                            Images.cssskill,
                          ),
                        ),
                      ),
                    ),
                    EasyText(
                        text: "Css",
                        fontFamily: Fonts.poppins,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)
                  ],
                ),
                SizedBox(width: 26.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 79.h,
                      width: 85.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 16.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.w, color: LightColor.broderColor),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image(
                          image: AssetImage(
                            Images.javascriptskill,
                          ),
                        ),
                      ),
                    ),
                    EasyText(
                        text: "Js",
                        fontFamily: Fonts.poppins,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)
                  ],
                ),
              ],
            ),
            SizedBox(height: 27.h),
            EasyText(
                text: "Tools & Software",
                fontFamily: Fonts.poppins,
                fontSize: 28,
                fontWeight: FontWeight.w700),
            SizedBox(height: 22.h),
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 16.h),
                      height: 79.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.w, color: LightColor.broderColor),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image(
                          image: AssetImage(
                            'assets/image/skills/github.png',
                          ),
                        ),
                      ),
                    ),
                    EasyText(
                        text: "GitHub",
                        fontFamily: Fonts.poppins,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)
                  ],
                ),
                SizedBox(width: 26.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                       height: 79.h,
                       width: 85.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 16.h),
                      decoration: BoxDecoration(
                           border: Border.all(
                               width: 1.w, color: LightColor.broderColor),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(12.r),
                        child: Image(

                          image: AssetImage(
                            'assets/image/skills/figma.png',
                          ),
                        ),
                      ),
                    ),
                    EasyText(
                        text: "Figma",
                        fontFamily: Fonts.poppins,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)
                  ],
                ),
              ],
            ),
            SizedBox(height: 110.h),
          ],
        ),
      ),
    );
  }
}
