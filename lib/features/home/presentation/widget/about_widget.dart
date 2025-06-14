import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/images/images.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';
import 'package:portfolio/core/widgets/easy_text.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          left: 44.w,
          right: 56.w,
          bottom: 28.h,
        ),
        margin: EdgeInsets.only(
          top: 41.h,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EasyText(
                text: "About",
                fontFamily: Fonts.poppins,
                fontSize: 28,
                fontWeight: FontWeight.w700),
            SizedBox(height: 10.h),
            SizedBox(
              width: 813.w,
              child: EasyText(
                  maxLines: 10,
                  text:
                      "I graduated in 2024 Experienced, Flutter Developer with 1 years of hands-on experience in designing and developing mobile applications. Proficient in building user-friendly interfaces and implementing complex functionalities. resulting in high client satisfaction. Skilled in integrating third-party APIs and optimizing app performance for seamless user experience. Strong problem-solving abilities and a proven track record of collaborating with cross-functional teams to achieve project goals. I am currently studying cybersecurity, specifically the red team, and I am interested in discovering vulnerabilities in websites and systems, and I am developing myself in languages and understanding some of the world’s cultures.",
                  fontFamily: Fonts.poppins,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20.h),
            EasyText(
                text: "What I Do",
                fontFamily: Fonts.poppins,
                fontSize: 24,
                fontWeight: FontWeight.w700),
            SizedBox(height: 17.h),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: LightColor.backGroundIDO,
                      borderRadius: BorderRadius.circular(9.r),
                      border: Border.all(
                        width: 3.w,
                        color: LightColor.broderColor,
                      )),
                  // height: 179.h,
                  width: 389.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        width: 116.w,
                        fit: BoxFit.cover,
                        Images.doWeb,
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 18.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EasyText(
                                  maxLines: 2,
                                  text: "Web Front-End Development",
                                  fontFamily: Fonts.inter,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                              SizedBox(height: 13.h),
                              EasyText(
                                  maxLines: 7,
                                  text:
                                      "With solid expertise in Flutter for Web, I build seamless and interactive web experiences that combine native-like performance with visually engaging UI, ensuring cross-platform consistency and responsiveness.",
                                  fontFamily: Fonts.poppins,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 34.w),
                    decoration: BoxDecoration(
                        color: LightColor.backGroundIDO,
                        borderRadius: BorderRadius.circular(9.r),
                        border: Border.all(
                          width: 3.w,
                          color: LightColor.broderColor,
                        )),
                    // height: 179.h,
                    width: 389.w,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          width: 116.w,
                          fit: BoxFit.cover,
                          Images.doFlutter,
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 18.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EasyText(
                                    maxLines: 2,
                                    text: "Flutter App Development",
                                    fontFamily: Fonts.inter,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                                SizedBox(height: 13.h),
                                EasyText(
                                    maxLines: 7,
                                    text:
                                        "Proficient in Flutter and Firebase, I build cross-platform, high-performance mobile apps with real-time data and seamless backend integration.",
                                    fontFamily: Fonts.poppins,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                  
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
