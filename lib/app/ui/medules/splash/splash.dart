import 'package:flutter/material.dart';
import 'package:gaza_secret/app/ui/medules/home/home_page.dart';
import 'package:gaza_secret/app/ui/medules/onbording/onboarding.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoaded = false;
  GetStorage prefs = GetStorage();
  var onboarding;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      onboarding = prefs.read("onboarding");

      Future.delayed(const Duration(seconds: 6)).then((value) => setState(() {
            isLoaded = true;
          }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateWhere: isLoaded,
      navigateRoute: onboarding == null ? OnBoardingScreens() : HomePage(),
      pageRouteTransition: PageRouteTransition.CupertinoPageRoute,
      logoSize: MediaQuery.of(context).size.height,
      imageSrc: "assets/splash_video.gif",
    );
  }
}
