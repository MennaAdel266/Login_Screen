import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen/Modules/home_screen.dart';
import 'package:login_screen/Modules/login_screen.dart';
import 'package:login_screen/Shared/translation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('en'),
      translations: Messages(),
      home: HomeScreen(),
    );
  }
}

