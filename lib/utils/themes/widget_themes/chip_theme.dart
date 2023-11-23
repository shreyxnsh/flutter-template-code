import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class FChipTheme {
  FChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: FColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: FColors.black),
    selectedColor: FColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: FColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: FColors.darkerGrey,
    labelStyle: TextStyle(color: FColors.white),
    selectedColor: FColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: FColors.white,
  );
}
