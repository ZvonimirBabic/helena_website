import 'package:get/get.dart';

import '../ui/home/home_screen_binding.dart';
import '../ui/home/home_screen_view.dart';

List<GetPage> pages = <GetPage>[
  GetPage(
    name: Routes.homeScreen,
    page: HomeScreenView.new,
    binding: HomeScreenBinding(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 300),
  ),
];

class Routes {
  static const homeScreen = '/home_screen';
}
