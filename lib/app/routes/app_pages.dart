import 'package:gaza_secret/app/bindings/details_binding.dart';
import 'package:gaza_secret/app/bindings/home_binding.dart';
import 'package:gaza_secret/app/ui/android/details/details_page.dart';
import 'package:gaza_secret/app/ui/android/home/home_page.dart';
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
  ];
}
