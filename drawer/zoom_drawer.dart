// ignore_for_file: public_member_api_docs, avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:kartal/kartal.dart';

// ! REQUIRED flutter_zoom_drawer package

class AppZoomDrawer extends StatelessWidget {
  const AppZoomDrawer({
    required this.controller,
    required this.menuWidget,
    required this.mainWidget,
    this.backgroundColor,
    super.key,
  });

  final ZoomDrawerController controller;
  final Widget menuWidget;
  final Widget mainWidget;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: controller,
      menuScreen: menuWidget,
      mainScreen: mainWidget,
      drawerShadowsBackgroundColor: backgroundColor ?? Colors.yellow,
      slideWidth: context.width * 0.65,
      borderRadius: 24,
      showShadow: true,
      angle: 0,
      style: DrawerStyle.defaultStyle,
      openCurve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 500),
      mainScreenTapClose: true,
      mainScreenOverlayColor: Colors.brown.withOpacity(0.5),
      menuScreenWidth: double.infinity,
      mainScreenAbsorbPointer: false,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );
  }
}
