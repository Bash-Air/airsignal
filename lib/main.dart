import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/ui/theme/app_theme.dart';

var app = GetMaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: Routes.map,
  theme: appThemeData,
  defaultTransition: Transition.fade,
  getPages: AppPages.pages,
);

void main() {
  runApp(app);
}