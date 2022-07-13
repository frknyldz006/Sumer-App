import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:sumer/constants.dart';
import 'package:sumer/screens/tabbarscreen.dart';
import 'package:sumer/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sumer/widgets/sumer_appbar.dart';
import 'package:floating_navbar/floating_navbar.dart';

import '../sumerico_icons.dart';
import 'gallery.dart';
import 'intellectual.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SumerColors().darkGrey,
        body: FloatingNavBar(
          color: SumerColors().darkGrey,
          horizontalPadding: 48.0,
          hapticFeedback: true,
          showTitle: false,
          borderRadius: 28,
          selectedIconColor: SumerColors().white,
          unselectedIconColor: SumerColors().white.withOpacity(0.3),
          items: [
            FloatingNavBarItem(
                iconData: Sumerico.home, page: TabBarScreen(), title: ''),
            FloatingNavBarItem(
                iconData: Sumerico.discovery, page: Intellectual(), title: ''),
            FloatingNavBarItem(
                iconData: Sumerico.image_2, page: Gallery(), title: ''),
          ],
        ));
  }
}
