import 'package:flutter/material.dart';
import 'package:flutter_pro/core/app_config.dart';
import 'package:flutter_pro/core/flutter_pro.dart';

class MyApp extends StatelessWidget {
  final Widget screen;
  MyApp(this.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: AppConfig.of(context).appTitle,
      home: FlutterPro(),
    );
  }
}
