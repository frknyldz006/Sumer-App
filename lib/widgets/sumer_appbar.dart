import 'package:flutter/material.dart';
import 'package:sumer/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

import '../constants.dart';
import '../sumerico_icons.dart';

Widget sumerAppBar(context,langswitcher) {
  return AppBar(
    elevation: 0,
    backgroundColor: SumerColors().darkGrey,
    leading: Padding(
      padding: const EdgeInsets.all(14),
      child: Image.asset("assets/splash.png"),
    ),
    title: Transform.translate(
      offset: Offset(-16, 1),
      child: Text(
        "Sumer",
        style: TextStyle(
            color: SumerColors().yellow, fontFamily: "Norse", fontSize: 24),
      ),
    ),
    actions: [langswitcher==true?
      Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: IconButton(
              onPressed: () {
                selectLang(context);
              },
              splashRadius: 24,
              icon: Icon(
                Sumerico.setting,
                color: SumerColors().white,
                size: 28,
              ))):Container(),
              
    ],
    
  );
}

selectLang(context) {
  return showModalBottomSheet(
      backgroundColor: SumerColors().darkGrey,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Image.asset("assets/icons/turkey.png"),
                title: Text(
                  LocaleKeys.turkey.tr(),
                  style: TextStyle(
                      color: SumerColors().white,
                      fontFamily: "Comfortaa",
                      fontSize: 20),
                ),
                onTap: () async {
                  await context.setLocale(Locale("tr"));
                },
              ),
              ListTile(
                leading: Image.asset("assets/icons/united-kingdom.png"),
                title: Text(
                  LocaleKeys.united.tr(),
                  style: TextStyle(
                      color: SumerColors().white,
                      fontFamily: "Comfortaa",
                      fontSize: 20),
                ),
                onTap: () async {
                  await context.setLocale(Locale("en"));
                },
              )
            ],
          ),
        );
      });
}