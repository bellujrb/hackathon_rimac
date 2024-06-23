import 'package:flutter/material.dart';
import 'package:frontend/core/style/colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  TextStyle get title => TextStyle(
      color: AppColors.tertiary,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      fontFamily: 'Satoshi',
      decoration: TextDecoration.none);

  TextStyle get smallGray => TextStyle(
      color: AppColors.secondary,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: 'Satoshi',
      decoration: TextDecoration.none);

    TextStyle get smallWhite => TextStyle(
      color: AppColors.tertiary,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: 'Satoshi',
      decoration: TextDecoration.none);

  TextStyle get mediumBlack => TextStyle(
      color: AppColors.onPrimary,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Satoshi',
      decoration: TextDecoration.none);
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}
