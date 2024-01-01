// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gaza_secret/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intro_slider/intro_slider.dart';

class OnBoardingScreens extends StatefulWidget {
  bool? customOnBoarding;
  List<ContentConfig>? customImages;
  String? customStoreKey;
  OnBoardingScreens({
    Key? key,
    this.customOnBoarding,
    this.customImages,
    this.customStoreKey,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return OnBoardingScreensState();
  }
}

class OnBoardingScreensState extends State<OnBoardingScreens> {
  List<ContentConfig> listContentConfig = [];
  GetStorage prefs = GetStorage();

  @override
  void initState() {
    super.initState();
    addBoardingImages();
  }

  void addBoardingImages() {
    listContentConfig.addAll(widget.customOnBoarding != null
        ? widget.customImages!
        : [
            ContentConfig(
              title: "ERASER",
              backgroundImage: "assets/nfc.jpg",
              backgroundImageFit: BoxFit.fill,
              description:
                  "Allow miles wound place the leave had. To sitting subject no improve studied limited",
              // pathImage: "assets/nfc.jpg",
              backgroundColor: Color.fromRGBO(245, 166, 35, 1),
            ),
            ContentConfig(
              title: "PENCIL",
              backgroundImage: "assets/nfc.jpg",
              backgroundImageFit: BoxFit.fill,
              description:
                  "Ye indulgence unreserved connection alteration appearance",
              // pathImage: "assets/nfc.jpg",
              backgroundColor: Color(0xff203152),
            ),
            ContentConfig(
              title: "RULER",
              backgroundImage: "assets/nfc.jpg",
              backgroundImageFit: BoxFit.fill,
              description:
                  "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
              // pathImage: "assets/nfc.jpg",
              backgroundColor: Color(0xff9932CC),
            ),
          ]);
  }

  void onDonePress() async {
    await prefs.write(
        widget.customStoreKey == null
            ? widget.customStoreKey ?? "null"
            : "onboarding",
        true);

    navigateToAfterDonePressed();
  }

  void navigateToAfterDonePressed() {
    Get.toNamed(Routes.INITIAL);
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
