import 'package:flutter/material.dart';
import 'package:sumer/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../constants.dart';

class Lang extends StatelessWidget {
  const Lang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SumerColors().darkGrey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: SumerColors().darkGrey,
          leading: IconButton(
              splashRadius: 24,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.keyboard_backspace_rounded,
                color: SumerColors().white,
              )),
        ),
        body: Container(
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
                Text(LocaleKeys.language.tr()),
                SizedBox(
                  height: 64,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
