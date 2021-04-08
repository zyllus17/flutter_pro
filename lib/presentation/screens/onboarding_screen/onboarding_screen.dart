import 'package:flutter/material.dart';
import 'package:flutter_pro/core/flutter_pro.dart';
//Onboarding screen shown only on the first install of the app
class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrientationScreen'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlutterPro()),
          );
        },
        child: Text(
          "Raised Button",
        ),
      )),
    );
  }
}
