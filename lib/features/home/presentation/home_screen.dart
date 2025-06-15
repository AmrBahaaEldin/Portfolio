import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/images/images.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';
import 'package:portfolio/core/widgets/easy_image.dart';
import 'package:portfolio/core/widgets/easy_text.dart';
import 'package:portfolio/features/contact/presentation/contact_screen.dart';
import 'package:portfolio/features/experience/presentation/experience_screen.dart';
import 'package:portfolio/features/home/logic/home_cubit.dart';
import 'package:portfolio/features/home/presentation/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/features/home/presentation/widget/about_widget.dart';
import 'package:portfolio/features/home/presentation/widget/profile_widget.dart';
import 'package:portfolio/features/home/presentation/widget/toggle_widget.dart';
import 'package:portfolio/features/projects/presentation/projects.dart';
import 'package:portfolio/features/skills/presentation/skills_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileWidget(),
          // AboutWidget(),
          ContactScreen(),
         // SkillsScreen(),
         // Projects(),
        //  ExperienceScreen(),
          ToggleWidgets(),
        ],
      ),
    );
  }
}




