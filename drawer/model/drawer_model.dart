// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class DrawerMenuItemModel {
  DrawerMenuItemModel({
    required this.menuName,
    required this.menuScreen,
    required this.menuIcon,
  });

  final String menuName;
  final Widget menuScreen;
  final IconData menuIcon;
}
