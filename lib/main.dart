import 'package:flutter/material.dart';
import 'package:gaza_secret/app/routes/app_pages.dart';
import 'package:gaza_secret/app/translations/app_translations.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.INITIAL,
          theme: appThemeData,
          defaultTransition: Transition.cupertino,
          getPages: AppPages.pages,
          locale: Locale('pt', 'BR'),
          translationsKeys: AppTranslation.translations,
        );
      }));
}
