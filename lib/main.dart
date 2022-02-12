import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/bindings/home_binding.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';
import 'package:getx_pattern/app/translations/app_translations.dart';

import 'app/ui/pages/home_page.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    locale: Locale('en', 'US'),
    translationsKeys: AppTranslation.translations,
  ));
}
