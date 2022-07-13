import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sumer/constants.dart';
import 'package:sumer/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

Widget infoSection() {
  return SingleChildScrollView(
    padding: EdgeInsets.only(right: 12, left: 12, top: 8),
    physics: BouncingScrollPhysics(),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: SumerColors().yellow,
                  style: BorderStyle.solid,
                  width: 4),
              image: DecorationImage(
                  image: AssetImage("assets/images/loca.png"),
                  fit: BoxFit.cover),
              color: SumerColors().lightGrey,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 10,
                    offset: Offset(0, 0))
              ]),
        ),
        Container(
          height: 180,
          width: double.infinity,
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              color: SumerColors().lightGrey,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 10,
                    offset: Offset(0, 0))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.info_1.tr(),
                ),
                Text(LocaleKeys.info_1_1.tr(),
                    style: TextStyle(
                      color: SumerColors().yellow,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  LocaleKeys.info_2.tr(),
                ),
                Text(LocaleKeys.info_2_1.tr(),
                    style: TextStyle(
                      color: SumerColors().yellow,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  LocaleKeys.info_3.tr(),
                ),
                Text(LocaleKeys.info_3_1.tr(),
                    style: TextStyle(
                      color: SumerColors().yellow,
                    )),
              ],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 8),
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
                color: SumerColors().lightGrey,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 10,
                      offset: Offset(0, 0))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.name.tr(),
                      style: TextStyle(
                        fontSize: 16,
                        color: SumerColors().yellow,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    LocaleKeys.name_1.tr(),
                  ),
                ],
              ),
            )),
        Container(
            margin: EdgeInsets.only(top: 8),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
                color: SumerColors().lightGrey,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 10,
                      offset: Offset(0, 0))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.population.tr(),
                      style: TextStyle(
                        fontSize: 16,
                        color: SumerColors().yellow,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    LocaleKeys.population_1.tr(),
                  ),
                ],
              ),
            )),
        Container(
            margin: EdgeInsets.only(top: 8),
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                color: SumerColors().lightGrey,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 10,
                      offset: Offset(0, 0))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.cities.tr(),
                      style: TextStyle(
                        fontSize: 16,
                        color: SumerColors().yellow,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    LocaleKeys.cities_1.tr(),
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 64,
        ),
        Center(
          child: Column(
            children: [
              Text("All information is taken from Wikipedia"),
              Text("Furkan Yıldız - 2021 ©"),
            ],
          ),
        ),
        SizedBox(
          height: 64,
        ),
      ],
    ),
  );
}
