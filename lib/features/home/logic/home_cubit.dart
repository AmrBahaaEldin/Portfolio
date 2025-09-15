

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'package:portfolio/core/constants/links/links.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';

import 'package:url_launcher/url_launcher.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  bool isDarkMode = false;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    emit(HomeTheme());
  }

  final Uri pdf = Uri.parse(Links.cv);
  final Uri github = Uri.parse(Links.github);
  final Uri tiktok = Uri.parse(Links.tikTok);
  final Uri linkedin = Uri.parse(Links.linkedin);

  ///////////open link in browser/////
  Future<void> openLink({required String uriType}) async {
    try {
      if (uriType == 'github') {
        await launchUrl(
            webOnlyWindowName: '_blank',
            github,
            mode: LaunchMode.externalApplication);
        emit(HomeOpenLink());
      } else if (uriType == 'linkedin') {
        await launchUrl(
            webOnlyWindowName: '_blank',
            linkedin,
            mode: LaunchMode.externalApplication);
        emit(HomeOpenLink());
      } else if (uriType == 'tiktok') {
        await launchUrl(
            webOnlyWindowName: '_blank',
            tiktok,
            mode: LaunchMode.externalApplication);
        emit(HomeOpenLink());
      } else if (uriType == 'cv') {
        await launchUrl(
            webOnlyWindowName: '_blank',
            pdf,
            mode: LaunchMode.externalApplication);
        emit(HomeOpenLink());
      } else if (uriType == 'youtube_cta') {
        await launchUrl(
            webOnlyWindowName: '_blank',
            Uri.parse(Links.youtubeCta),
            mode: LaunchMode.externalApplication);
        emit(HomeOpenLink());
      } else if (uriType == 'youtube_Zalada') {
        await launchUrl(
            webOnlyWindowName: '_blank',
            Uri.parse(Links.youtubeECommerce),
            mode: LaunchMode.externalApplication);
        emit(HomeOpenLink());
      } else {
        throw ('Invalid link type');
      }
    } catch (e) {
      throw ('Error opening link: $e');
    }
  }

//////////////////////////////////////////////////////
//default color for toggle items
  Color colorAbout = LightColor.backGroundSliderSelect;
  Color colorExperience = LightColor.backGroundSliderUnSelect;
  Color colorProjects = LightColor.backGroundSliderUnSelect;
  Color colorSkills = LightColor.backGroundSliderUnSelect;
  Color colorContact = LightColor.backGroundSliderUnSelect;
  String currentScreen = 'about';
  void toggleScreen({required String screen}) {
    currentScreen = screen;
    colorAbout = LightColor.backGroundSliderUnSelect;
    colorExperience = LightColor.backGroundSliderUnSelect;
    colorProjects = LightColor.backGroundSliderUnSelect;
    colorSkills = LightColor.backGroundSliderUnSelect;
    colorContact = LightColor.backGroundSliderUnSelect;
    switch (screen) {
      case 'about':
        colorAbout = LightColor.backGroundSliderSelect;
        break;
      case 'experience':
        colorExperience = LightColor.backGroundSliderSelect;
        break;
      case 'projects':
        colorProjects = LightColor.backGroundSliderSelect;
        break;
      case 'skills':
        colorSkills = LightColor.backGroundSliderSelect;
        break;
      case 'contact':
        colorContact = LightColor.backGroundSliderSelect;
        break;
    }

    emit(ToggleScreen());
  }


  }




