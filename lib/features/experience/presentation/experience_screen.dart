import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/images/images.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';
import 'package:portfolio/core/widgets/easy_text.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

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
                text: "Education",
                fontFamily: Fonts.poppins,
                fontSize: 28,
                fontWeight: FontWeight.w700),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 18.h),
              width: 351.w,
              decoration: BoxDecoration(
                  border: Border.all(width: 3.w, color: LightColor.broderColor),
                  borderRadius: BorderRadius.circular(14.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  EasyText(
                      text: "2019 - 2024",
                      fontFamily: Fonts.poppins,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                  SizedBox(height: 6.h),
                  EasyText(
                      text: "B.Tech ( IT ) from CSPIT, CHARUSAT",
                      fontFamily: Fonts.poppins,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  SizedBox(height: 8.h),
                  EasyText(
                      text: "9.18 CGPA till 6th Sem",
                      fontFamily: Fonts.poppins,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ],
              ),
            ),
            SizedBox(height: 31.h),
            EasyText(
                text: "Experience",
                fontFamily: Fonts.poppins,
                fontSize: 28,
                fontWeight: FontWeight.w700),
            SizedBox(height: 16.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.r),
                border: Border.all(width: 3.w, color: LightColor.broderColor),
              ),
              padding: EdgeInsets.only(left: 26.w),
              child: Row(
                children: [
                  Container(
                    height: 88.h,
                    width: 88.w,
                    margin: EdgeInsets.symmetric(vertical: 18.h,horizontal: 20.w),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.w, color: LightColor.broderColor),
                        borderRadius: BorderRadius.circular(14.r)),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        Images.gitHub,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EasyText(
                          text: "Company: CompanyA",
                          fontFamily: Fonts.poppins,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                      SizedBox(height: 6.h),
                      EasyText(
                          text: "Role: Software Developer Engineer Intern",
                          fontFamily: Fonts.poppins,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                      SizedBox(height: 8.h),
                      EasyText(
                          text: "Duration: July / 2024 - Jan / 2025 (6 month)",
                          fontFamily: Fonts.poppins,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.r),
                border: Border.all(width: 3.w, color: LightColor.broderColor),
              ),
              padding: EdgeInsets.only(left: 26.w),
              child: Row(
                children: [
                  Container(
                    height: 88.h,
                    width: 88.w,
                    margin: EdgeInsets.symmetric(vertical: 18.h,horizontal: 20.w),
                    decoration: BoxDecoration(
                        border:
                        Border.all(width: 1.w, color: LightColor.broderColor),
                        borderRadius: BorderRadius.circular(14.r)),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        Images.gitHub,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EasyText(
                          text: "Company: CompanyA",
                          fontFamily: Fonts.poppins,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                      SizedBox(height: 6.h),
                      EasyText(
                          text: "Role: Software Developer Engineer Intern",
                          fontFamily: Fonts.poppins,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                      SizedBox(height: 8.h),
                      EasyText(
                          text: "Duration: July / 2024 - Jan / 2025 (6 month)",
                          fontFamily: Fonts.poppins,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ],
                  ),
                ],
              ),
            ),
            ////////end
            SizedBox(height: 70.h),

          ],
        ),
      ),
    );
  }
}
