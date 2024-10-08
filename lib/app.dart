
import 'package:contemporarygospel/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/constants/text_strings.dart';
import 'utils/themes/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FTexts.appName,
      themeMode: ThemeMode.dark,
      theme: FAppTheme.lightTheme,
      darkTheme: FAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home:   NavigationMenu(),
    );
  }
}
