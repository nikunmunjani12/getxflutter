import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '1-2-Snackbar_Msg.dart';
import '10-11-StateManwegement-Controller.dart';
import '12-controller.dart';
import '13-UniqueiD.dart';
import '14-Workes.dart';
import '15-1-Languge.dart';
import '15-Languge-Internationalzation.dart';
import '16-Dependency_Injection.dart';
import '3-Show_Dialog.dart';
import '4-DarkMode_OpenDialog.dart';
import '5-6-Page-Animation.dart';
import '7-StateManegement.dart';
import '8-Statemanegemennt-name.dart';
import '9-StateManegement.dart';
import 'demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Multilanguge(),
      locale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: StreambuilderTack(),
    );
  }
}
