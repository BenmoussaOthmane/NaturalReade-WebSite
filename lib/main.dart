import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:webtest/screen/home.dart';
import 'package:webtest/screen/list.dart';
//import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(EasyLocalization(
    child: MyApp(),
    path: "assets",
    saveLocale: true,
    supportedLocales: [Locale('fr', 'FR'), Locale('en', 'EN')],
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Liste(),
    );
  }
}
