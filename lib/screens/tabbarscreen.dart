import 'package:flutter/material.dart';
import 'package:sumer/screens/info.dart';
import 'package:sumer/screens/origins.dart';
import 'package:sumer/translations/locale_keys.g.dart';
import 'package:sumer/widgets/sumer_appbar.dart';
import 'package:easy_localization/easy_localization.dart';

import '../constants.dart';
import '../sumerico_icons.dart';
import 'history.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  bool langswitcher = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: SafeArea(
          top: true,
          child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: sumerAppBar(context, langswitcher)),
            backgroundColor: SumerColors().darkGrey,
            body: Column(
              children: [
                Container(
                  height: 60,
                  color: SumerColors().darkGrey,
                  child: TabBar(
                    indicatorColor: SumerColors().white,
                    tabs: [
                      Tab(
                        child: Text(
                          LocaleKeys.info.tr(),
                          style: TextStyle(
                              color: SumerColors().yellow,
                              fontFamily: "Norse",
                              fontSize: 20),
                        ),
                      ),
                      Tab(
                        child: Text(
                          LocaleKeys.origins.tr(),
                          style: TextStyle(
                              color: SumerColors().yellow,
                              fontFamily: "Norse",
                              fontSize: 20),
                        ),
                      ),
                      Tab(
                        child: Text(
                          LocaleKeys.history.tr(),
                          style: TextStyle(
                              color: SumerColors().yellow,
                              fontFamily: "Norse",
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: sumerTabView())
              ],
            ),
          ),
        ));
  }
}

Widget sumerTabView() {
  return TabBarView(
    children: [
      infoSection(),
      originsSection(),
      historySection(),
    ],
  );
}
