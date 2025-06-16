import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/constants/fonts/fonts.dart';
import 'package:portfolio/core/constants/theme/light_color.dart';
import 'package:portfolio/core/widgets/easy_text.dart';
import 'package:portfolio/features/home/logic/home_cubit.dart';
import 'package:portfolio/features/home/presentation/widget/toggle_item.dart';

class ToggleWidgets extends StatelessWidget {
  const ToggleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 182.h, right: 108.w),
      padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 32.h),
      decoration: BoxDecoration(
        color: LightColor.backgroundHomeColor,
        border: Border.all(width: 3.w, color: LightColor.broderColor),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildToggleItem(
            context,
            onTap: () =>context.read<HomeCubit>().toggleScreen(screen: 'about'),
            color: context.watch<HomeCubit>().colorAbout,
            icon: CupertinoIcons.person_solid,
            label: "About",
          ),
          SizedBox(height: 24.h),
          buildToggleItem(
            context,
            onTap: () =>context.read<HomeCubit>().toggleScreen(screen: 'experience'),
            color: context.watch<HomeCubit>().colorExperience,
            icon: FontAwesomeIcons.award,
            label: "Experience",
          ),
          SizedBox(height: 24.h),
         buildToggleItem(
            context,
            onTap: () => context.read<HomeCubit>().toggleScreen(screen: 'projects'),
            color: context.watch<HomeCubit>().colorProjects,
            icon: FontAwesomeIcons.laptopCode,
            label: "Projects",
          ),
          SizedBox(height: 24.h),
          buildToggleItem(
            context,
            onTap: () => context.read<HomeCubit>().toggleScreen(screen: 'skills'),
            color: context.watch<HomeCubit>().colorSkills,
            icon: FontAwesomeIcons.brain,
            label: "Skills",
          ),
          SizedBox(height: 24.h),
          buildToggleItem(
            context,
            onTap: () => context.read<HomeCubit>().toggleScreen(screen: 'contact'),
            color: context.watch<HomeCubit>().colorContact,
            icon: FontAwesomeIcons.envelope,
            label: "Contact",
          ),
        ],
      ),
    );
  }


}
