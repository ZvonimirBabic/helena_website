import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/assets.dart';
import 'splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Hero(
            tag: 'Logo',
            child: Image.asset(ImageAssets.shrek),
          ),
        ),
      );
}
