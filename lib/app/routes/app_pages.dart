import 'package:gaza_secret/app/bindings/details_binding.dart';
import 'package:gaza_secret/app/bindings/home_binding.dart';
import 'package:gaza_secret/app/ui/medules/details/details_page.dart';
import 'package:gaza_secret/app/ui/medules/home/home_page.dart';
import 'package:gaza_secret/app/ui/medules/onbording/onboarding.dart';
import 'package:gaza_secret/app/ui/medules/splash/splash.dart';
import 'package:get/get.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        binding: DetailsBinding()),
    GetPage(
      name: Routes.SplashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.OnBoardingScreens,
      page: () => OnBoardingScreens(),
    ),
  ];
}
