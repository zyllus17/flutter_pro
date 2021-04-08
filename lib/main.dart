import 'package:flutter/material.dart';
import 'package:flutter_pro/core/flutter_pro.dart';

class MyApp extends StatelessWidget {
  final Widget screen;
  MyApp(this.screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'FlutterPro App',
      home: FlutterPro(),
    );
  }
}
