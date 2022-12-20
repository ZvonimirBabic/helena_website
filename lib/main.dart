import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/pages.dart';
import 'constants/themes.dart';
import 'localization/localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Website());
}

class Website extends StatelessWidget {
  const Website({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        onGenerateTitle: (_) => 'appName'.tr,
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        initialRoute: Routes.splashScreen,
        getPages: pages,
        locale: Localization.locale,
        fallbackLocale: Localization.fallbackLocale,
        translations: Localization(),
      );
}
