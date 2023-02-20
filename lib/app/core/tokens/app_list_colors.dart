import 'package:site/app/core/tokens/tokens.dart';

class AppListColors {
  static const linear = [
    AppColors.primaryDark,
    AppColors.primary,
  ];

  static const stories = [
    AppColors.primary,
    AppColors.primaryDark,
    AppColors.shadow,
  ];

  static const projectName = [
    AppColors.primary,
    AppColors.primaryDark,
  ];

  static const divider = [
    AppColors.orange,
    AppColors.primary,
  ];

  static final glassmorphic = [
    AppColors.shadowLightSocial.withOpacity(.05),
    AppColors.shadowLightSocial.withOpacity(.15),
    AppColors.shadowLightSocial.withOpacity(.3),
  ];
}
