import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'view/mainScreen/main_screen.dart';

var deviceType = DeviceType.desktop;
void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(context),
    ),
  );
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp(BuildContext context);

  @override
  Widget build(BuildContext context) {
    deviceType = DevicePreview.selectedDevice(context).identifier.type;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Direct Message App',
      theme: ThemeData(),
      home: const MainScreen(),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
