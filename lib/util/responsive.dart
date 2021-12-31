import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;

  // ignore: use_key_in_widget_constructors
  const Responsive({
    required this.mobile,
    required this.tablet,
  });

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet helep us later
  static bool isMobile(BuildContext context) => deviceType == DeviceType.phone;

  static bool isTablet(BuildContext context) => deviceType == DeviceType.tablet;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (deviceType == DeviceType.tablet) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
