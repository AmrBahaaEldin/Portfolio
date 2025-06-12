import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/core/constants/links/links.dart';
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
  final Uri instagram = Uri.parse(Links.instagram);
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
      } else if (uriType == 'instagram') {
        await launchUrl(
            webOnlyWindowName: '_blank',
            instagram,
            mode: LaunchMode.externalApplication);
        emit(HomeOpenLink());
      } else if (uriType == 'cv') {
        await launchUrl(
            webOnlyWindowName: '_blank',
            pdf,
            mode: LaunchMode.externalApplication);
        emit(HomeOpenLink());
      }
    } catch (e) {
      throw ('Error opening link: $e');
    }
  }
}
