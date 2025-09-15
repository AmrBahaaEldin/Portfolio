import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/images/images.dart';

import 'package:portfolio/core/widgets/easy_image.dart';
import 'package:portfolio/core/widgets/easy_text.dart';
import 'package:portfolio/features/contact/presentation/contact_screen.dart';
import 'package:portfolio/features/experience/presentation/experience_screen.dart';
import 'package:portfolio/features/home/logic/home_cubit.dart';

import 'package:portfolio/features/home/presentation/widget/about_widget.dart';
import 'package:portfolio/features/home/presentation/widget/profile_widget.dart';
import 'package:portfolio/features/home/presentation/widget/toggle_widget.dart';
import 'package:portfolio/features/projects/presentation/projects.dart';
import 'package:portfolio/features/skills/presentation/skills_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget currentWidget;
    switch (context.watch<HomeCubit>().currentScreen) {
      case 'about':
        currentWidget = AboutWidget();
        break;
      case 'experience':
        currentWidget = ExperienceScreen();
        break;
      case 'projects':
        currentWidget = Projects();
        break;
      case 'skills':
        currentWidget = SkillsScreen();
        break;
      case 'contact':
        currentWidget = ContactScreen();
        break;
      default:
        currentWidget = AboutWidget();
    }
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
              child: context.watch<HomeCubit>().isDarkMode
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
          currentWidget,


          ToggleWidgets(),


        ],
      ),
    );
  }
}
