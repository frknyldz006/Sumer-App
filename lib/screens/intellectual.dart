import 'package:flutter/material.dart';
import 'package:sumer/constants.dart';
import 'package:sumer/screens/culture/language.dart';
import 'package:sumer/screens/culture/religious.dart';
import 'package:sumer/screens/culture/sociallife.dart';
import 'package:sumer/translations/locale_keys.g.dart';
import 'package:sumer/widgets/sumer_appbar.dart';
import 'package:easy_localization/easy_localization.dart';

import 'culture/agriculture.dart';
import 'culture/architecture.dart';
import 'culture/art.dart';
import 'culture/economy.dart';
import 'culture/math.dart';
import 'culture/military.dart';
import 'culture/tech.dart';

class Intellectual extends StatefulWidget {
  @override
  _IntellectualState createState() => _IntellectualState();
}

class _IntellectualState extends State<Intellectual> {
  bool langswitcher = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: sumerAppBar(context,langswitcher)),
        backgroundColor: SumerColors().darkGrey,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 100),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Social(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/culture.png", LocaleKeys.life.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lang(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/translate.png", LocaleKeys.lang.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Religious(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/religious.png", LocaleKeys.relig.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Agriculture(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/agriculture.png", LocaleKeys.agri.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Art(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/art.png", LocaleKeys.art_title.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Architecture(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/architecture.png", LocaleKeys.archi.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Math(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/math.png", LocaleKeys.math_title.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Economy(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/economy.png", LocaleKeys.econ.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Military(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/military.png", LocaleKeys.Milit.tr()),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tech(),
                      ));
                },
                child: intellectualItem(
                    "assets/icons/tech.png", LocaleKeys.tech_title.tr()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget intellectualItem(image, text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 80,
      decoration: BoxDecoration(
          color: SumerColors().lightGrey,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: ListTile(
          leading: Image.asset(
            image,
            height: 42,
          ),
          title: Text(
            text,
            style: TextStyle(
                color: SumerColors().white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
