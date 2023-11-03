import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGreen600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green600,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsBlack900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.58),
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsBlack90013 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsBlack90014 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsBlack900_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumPoppinsBlack900_2 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumRed500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red500,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray4000111 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray40001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallFrutigerOnPrimaryContainer =>
      theme.textTheme.bodySmall!.frutiger.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins;
  static get bodySmallPoppins12 => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBluegray40001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBluegray4000112 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppins_1 => theme.textTheme.bodySmall!.poppins;
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimaryContainer8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 8.fSize,
      );
  // Headline text style
  static get headlineSmallBahnschriftBluegray90001 =>
      theme.textTheme.headlineSmall!.bahnschrift.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallBahnschriftBluegray90001Bold =>
      theme.textTheme.headlineSmall!.bahnschrift.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  // Label text style
  static get labelLargeBahnschrift =>
      theme.textTheme.labelLarge!.bahnschrift.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBahnschriftBlack900 =>
      theme.textTheme.labelLarge!.bahnschrift.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBahnschriftPrimary =>
      theme.textTheme.labelLarge!.bahnschrift.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack900SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGreen600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green600,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBluegray40001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelSmallBluegray40001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 8.fSize,
      );
  static get labelSmallBluegray40001_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 23.fSize,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsBlack900SemiBold =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBahnschrift =>
      theme.textTheme.titleMedium!.bahnschrift.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBahnschriftBluegray40001 =>
      theme.textTheme.titleMedium!.bahnschrift.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBahnschriftBluegray40001Bold =>
      theme.textTheme.titleMedium!.bahnschrift.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBahnschriftOnPrimaryContainer =>
      theme.textTheme.titleMedium!.bahnschrift.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBahnschriftOnPrimaryContainerBold =>
      theme.textTheme.titleMedium!.bahnschrift.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get titleMediumGreen600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRedA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmall15_1 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallBahnschriftBluegray40001 =>
      theme.textTheme.titleSmall!.bahnschrift.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBahnschriftGray600 =>
      theme.textTheme.titleSmall!.bahnschrift.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBahnschriftOnPrimaryContainer =>
      theme.textTheme.titleSmall!.bahnschrift.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBahnschriftPrimary =>
      theme.textTheme.titleSmall!.bahnschrift.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBahnschriftPrimaryContainer =>
      theme.textTheme.titleSmall!.bahnschrift.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallUrbanistGray600 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get bahnschrift {
    return copyWith(
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get frutiger {
    return copyWith(
      fontFamily: 'Frutiger',
    );
  }
}
