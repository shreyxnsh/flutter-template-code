import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class FOutlinedButtonTheme {
  FOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: FColors.dark,
      side: const BorderSide(color: FColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: FColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: FSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(FSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: FColors.light,
      side: const BorderSide(color: FColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: FColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: FSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(FSizes.buttonRadius)),
    ),
  );
}
