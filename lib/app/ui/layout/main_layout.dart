import 'package:flutter/material.dart';
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
        body:
          Stack(children: [
            children,
            Padding(
              padding: const EdgeInsets.all(20),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 40,
                ),
                color: Colors.blue,
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
            ),
          ]),
        );
  }
}

class SidePanel {}
