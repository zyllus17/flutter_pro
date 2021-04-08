import 'package:flutter/material.dart';

//This is the widget below the [MyApp] root widget
class FlutterPro extends StatelessWidget {
  const FlutterPro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterPro App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('FlutterPro'),
        ),
      ),
    );
  }
}
