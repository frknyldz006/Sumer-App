import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sumer/constants.dart';
import 'package:sumer/translations/codegen_loader.g.dart';

import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('tr')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        assetLoader: CodegenLoader(),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Sumer',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      color: SumerColors().darkGrey,
      theme: ThemeData(fontFamily: "Comfortaa"),
      home: HomeScreen(),
    );
  }
}
