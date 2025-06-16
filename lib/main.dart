import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/constants/bloc/bloc_observer.dart';
import 'package:portfolio/core/constants/theme/my_theme.dart';
import 'package:portfolio/features/home/logic/home_cubit.dart';
import 'package:portfolio/features/home/presentation/home_screen.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: ScreenUtilInit(
        designSize: Size(1728, 1135),
        builder: (context, child) {
          return BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                themeMode: context.watch<HomeCubit>().isDarkMode ? ThemeMode.dark : ThemeMode.light,
                theme: MyThemes.lightTheme(),
                darkTheme: MyThemes.darkTheme(),
                home: const HomeScreen(),
              );
            },
          );
        },
      ),
    );

  }
}