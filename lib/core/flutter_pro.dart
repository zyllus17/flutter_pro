import 'package:flutter/material.dart';

import 'app_config.dart';

//This is the widget below the [MyApp] root widget
class FlutterPro extends StatelessWidget {
  const FlutterPro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConfig.of(context).appTitle,
        ),
      ),
      body: Center(
        child: Container(
          child: Text('You are running ${AppConfig.of(context).appTitle}'),
        ),
      ),
    );
  }
}
