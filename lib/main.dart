import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gaza_secret/app/routes/app_pages.dart';
import 'package:gaza_secret/app/translations/app_translations.dart';
import 'package:gaza_secret/firebase_options.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'app/ui/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("82977ab9-14a6-4490-9b58-5141db70d92a");

// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.Notifications.requestPermission(true);

  runApp(ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.SplashScreen,
          theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
          darkTheme:
              ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          defaultTransition: Transition.cupertino,
          getPages: AppPages.pages,
          locale: Locale('pt', 'BR'),
          translationsKeys: AppTranslation.translations,
        );
      }));
}
