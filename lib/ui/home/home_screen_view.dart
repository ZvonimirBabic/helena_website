import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/assets.dart';
import 'home_screen_controller.dart';
import 'home_widgets/mobile_layout.dart';
import 'home_widgets/web_layout.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImageAssets.tile), repeat: ImageRepeat.repeat),
      ),
      child: Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 767) return const MobileLayout();
          if (constraints.maxWidth > 767) {
            return const Align(
                alignment: Alignment.topCenter, child: WebLayout());
          }
          return const Text('NO LAYOUT!');
        },
      )),
    );
  }
}
