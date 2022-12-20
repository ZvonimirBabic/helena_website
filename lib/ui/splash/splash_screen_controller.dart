import 'package:get/get.dart';

import '../../constants/pages.dart';

class SplashScreenController extends GetxController {
  ///
  /// DEPENDENCIES
  ///

  ///
  /// INIT
  ///

  @override
  Future<void> onInit() async {
    super.onInit();
    _startAnimation();
  }

  ///
  /// VARIABLES
  ///

  ///
  /// GETTERS
  ///

  ///
  /// SETTERS
  ///

  ///
  /// METHODS
  ///

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 2), _finishAnimation);
  }

  void _finishAnimation() {
    Get.offAllNamed(Routes.homeScreen);
  }
}
