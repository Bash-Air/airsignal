import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/ui/pages/report_page.dart';
import 'app/ui/theme/app_theme.dart';

var app = const MyApp();
var test = const ReportPage();
void main() => runApp(app);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.map,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
    );
  }
}
