// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../core/constants/index.dart';
import 'model/drawer_model.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    required this.context,
    required this.menuItems,
    super.key,
  });

  final BuildContext context;
  final List<DrawerMenuItemModel>? menuItems;

  @override
  Widget build(BuildContext context) {
    return menuItems == null
        ? const Scaffold()
        : Scaffold(
            backgroundColor: ColorConstants.white,
            body: Container(
              height: context.sized.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [ColorConstants.blue, ColorConstants.indigo],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 24,
                          left: 24,
                          right: 24,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Text(
                              'name',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: menuItems!.map(
                          (item) {
                            return TextButton(
                              onPressed: () =>
                                  context.route.navigateToPage(item.menuScreen),
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0x44000000),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(item.menuIcon,
                                      color: Colors.white, size: 24),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Text(
                                      item.menuName,
                                      style: const TextStyle(
                                        color: ColorConstants.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Buy me a coffee',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
