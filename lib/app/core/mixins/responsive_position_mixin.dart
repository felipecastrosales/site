import 'package:site/app/core/responsive/responsive.dart';

mixin ResponsivePositionMixin {
  double gradientPresentationWidthAlignment(double constraints) {
    if (constraints > Breakpoints.kUHD4K) {
      return 0.2;
    } else if (constraints > Breakpoints.kFullHD) {
      return 0.25;
    } else {
      return 0.32;
    }
  }

  double gradientExperienceAndProjectsSectionWidthAlignment(
    double constraints,
  ) {
    if (constraints > Breakpoints.kUHD4K) {
      return -0.2;
    } else if (constraints > Breakpoints.kLessThanKUHD4K) {
      return -0.3;
    } else if (constraints > Breakpoints.kWXGA) {
      return -0.35;
    } else if (constraints > Breakpoints.experience) {
      return -0.4;
    } else {
      return constraints * 0.0003;
    }
  }
}
