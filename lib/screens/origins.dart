import 'package:flutter/material.dart';
import 'package:sumer/constants.dart';
import 'package:sumer/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

Widget originsSection() {
  return Container(
    margin: EdgeInsets.all(12),
    height: double.infinity,
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
    child: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Text(LocaleKeys.origins_1.tr()),
          SizedBox(
            height: 64,
          )
        ],
      ),
    ),
  );
}
