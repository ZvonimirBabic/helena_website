import 'package:get/get.dart';

import '../ui/home/home_screen_binding.dart';
import '../ui/home/home_screen_view.dart';
import '../ui/splash/splash_screen_binding.dart';
import '../ui/splash/splash_screen_view.dart';

List<GetPage> pages = <GetPage>[
  GetPage(
    name: Routes.splashScreen,
    page: SplashScreenView.new,
    binding: SplashScreenBinding(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 300),
  ),
  GetPage(
    name: Routes.homeScreen,
    page: HomeScreenView.new,
    binding: HomeScreenBinding(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 300),
  ),
];

class Routes {
  static const splashScreen = '/splash_screen';
  static const homeScreen = '/home_screen';
}
