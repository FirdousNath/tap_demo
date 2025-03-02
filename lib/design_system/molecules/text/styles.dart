import 'package:flutter/material.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';

class AppTextStyles {
  static TextStyle get titleBig => TextStyle(
    fontSize: large + nano,
    fontWeight: FontWeight.w600,
    color: activeColor,
    fontFamily: 'Inter',
  );

  static TextStyle get titleMedium => TextStyle(
    fontSize: medium,
    fontWeight: FontWeight.w600,
    color: activeColor,
    fontFamily: 'Inter',
  );

  static TextStyle get titleSemiBold => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: activeColor,
    fontFamily: 'Inter',
  );

  static TextStyle get description => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: descriptionColor,
    fontFamily: 'Inter',
  );

  static TextStyle get searchText => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: disabledColor,
    fontFamily: 'Inter',
  );

  static TextStyle get body => TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: disabledColor,
  );

  static TextStyle get bodyBold => TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: disabledColor,
  );
}
