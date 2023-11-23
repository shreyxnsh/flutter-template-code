import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class FTextFormFieldTheme {
  FTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: FColors.darkGrey,
    suffixIconColor: FColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: FSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: FSizes.fontSizeMd, color: FColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: FSizes.fonFSizesm, color: FColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: FColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: FColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: FColors.darkGrey,
    suffixIconColor: FColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: FSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: FSizes.fontSizeMd, color: FColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: FSizes.fonFSizesm, color: FColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: FColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: FColors.warning),
    ),
  );
}
