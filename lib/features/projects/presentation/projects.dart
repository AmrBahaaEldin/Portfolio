import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/images/images.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';
import 'package:portfolio/core/widgets/easy_text.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

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
                text: "Projects",
                fontFamily: Fonts.poppins,
                fontSize: 28,
                fontWeight: FontWeight.w700),
            SizedBox(height: 28.h),
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.w, vertical: 18.h),
                  width: 351.w,
                  decoration: BoxDecoration(
                      color: LightColor.backgroundHomeSecondColor,
                      border:
                          Border.all(width: 1.w, color: LightColor.broderColor),
                      borderRadius: BorderRadius.circular(14.r)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage(
                            Images.testProject,
                          ),
                          fit: BoxFit.cover,
                        ),
                        EasyText(
                            text: "CTA Bus Service",
                            fontFamily: Fonts.poppins,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 53.w),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.w, vertical: 18.h),
                  width: 351.w,
                  decoration: BoxDecoration(
                      color: LightColor.backgroundHomeSecondColor,
                      border:
                          Border.all(width: 1.w, color: LightColor.broderColor),
                      borderRadius: BorderRadius.circular(14.r)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage(
                            Images.testProject,
                          ),
                          fit: BoxFit.cover,
                        ),
                        EasyText(
                            maxLines: 1,
                            text: "Furniture Website ( React + PHP ) ",
                            fontFamily: Fonts.poppins,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.w, vertical: 18.h),
                  width: 351.w,
                  decoration: BoxDecoration(
                      color: LightColor.backgroundHomeSecondColor,
                      border:
                          Border.all(width: 1.w, color: LightColor.broderColor),
                      borderRadius: BorderRadius.circular(14.r)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage(
                            Images.testProject,
                          ),
                          fit: BoxFit.cover,
                        ),
                        EasyText(
                            text: "CTA Bus Service",
                            fontFamily: Fonts.poppins,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 53.w),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.w, vertical: 18.h),
                  width: 351.w,
                  decoration: BoxDecoration(
                      color: LightColor.backgroundHomeSecondColor,
                      border:
                          Border.all(width: 1.w, color: LightColor.broderColor),
                      borderRadius: BorderRadius.circular(14.r)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage(
                            Images.testProject,
                          ),
                          fit: BoxFit.cover,
                        ),
                        EasyText(
                            maxLines: 1,
                            text: "Furniture Website ( React + PHP ) ",
                            fontFamily: Fonts.poppins,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.w, vertical: 18.h),
                  width: 351.w,
                  decoration: BoxDecoration(
                      color: LightColor.backgroundHomeSecondColor,
                      border:
                          Border.all(width: 1.w, color: LightColor.broderColor),
                      borderRadius: BorderRadius.circular(14.r)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage(
                            Images.testProject,
                          ),
                          fit: BoxFit.cover,
                        ),
                        EasyText(
                            text: "CTA Bus Service",
                            fontFamily: Fonts.poppins,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                        //only link projects
                        GestureDetector(
                          onTap: () {},
                          child: EasyText(
                              text: "Link Youtube",
                              fontFamily: Fonts.merri,
                              fontSize: 12,
                              color: LightColor.lineLink,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 53.w),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.w, vertical: 18.h),
                  width: 351.w,
                  decoration: BoxDecoration(
                      color: LightColor.backgroundHomeSecondColor,
                      border:
                          Border.all(width: 1.w, color: LightColor.broderColor),
                      borderRadius: BorderRadius.circular(14.r)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage(
                            Images.testProject,
                          ),
                          fit: BoxFit.cover,
                        ),
                        EasyText(
                            maxLines: 1,
                            text: "Furniture Website ( React + PHP ) ",
                            fontFamily: Fonts.poppins,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)
                      ],
                    ),
                  ),
                ),
              ],
            ),

            ///END
            SizedBox(height: 49.h),
          ],
        ),
      ),
    );
  }
}
