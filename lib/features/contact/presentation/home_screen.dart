import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/images/images_svg.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';
import 'package:portfolio/core/widgets/easy_image.dart';
import 'package:portfolio/core/widgets/easy_text.dart';
import 'package:portfolio/features/home/logic/home_cubit.dart';
import 'package:portfolio/features/home/presentation/profile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            EasyText(
              fontFamily: Fonts.sigmar,
              text: "PortFolio",
              fontSize: 38,
              fontWeight: FontWeight.w400,
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<HomeCubit>(context).toggleTheme();
              },
              child: BlocProvider.of<HomeCubit>(context).isDarkMode
                  ? EasyImageSvg(
                      image: Images.darkClickIcon,
                    )
                  : EasyImageSvg(
                      image: Images.lightClickIcon,
                    ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 109.w, top: 70.h),
        child: Row(
          children: [
            ProfileWidget(),
            EasyText(
                text: "About you",
                fontFamily: Fonts.sigmar,
                fontSize: 32,
                fontWeight: FontWeight.w400)
          ],
        ),
      ),
    );
  }
}


