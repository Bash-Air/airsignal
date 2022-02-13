import 'package:airsignal_flutter/app/ui/pages/report_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// ignore: unused_import

import '../widgets/side_panel.dart';

class MainLayout extends StatelessWidget {
  final Widget children;

  MainLayout({Key? key, required this.children}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: SidePanelApp(),
      body: Stack(children: [
        children,
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 40,
                ),
                color: Colors.blue,
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
              Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.warning,
                  size: 40,
                ),
                color: Colors.blue,
                onPressed: () {
                  Get.to(ReportPage());
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class SidePanel {}
