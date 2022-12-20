import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen_controller.dart';
import 'home_widgets/mobile_layout.dart';
import 'home_widgets/web_layout.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        log('height is ${constraints.heightConstraints()}');
        if (constraints.maxWidth < 767) return const MobileLayout();
        if (constraints.maxWidth > 767) {
          return const Align(
              alignment: Alignment.topCenter, child: WebLayout());
        }
        return const Text('NO LAYOUT!');
      },
    ));
  }
}
