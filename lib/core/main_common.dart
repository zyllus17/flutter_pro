import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro/core/config_reader.dart';
import 'package:flutter_pro/core/environment.dart';
import 'package:flutter_pro/core/flutter_pro.dart';
import 'package:flutter_pro/main.dart';
import 'package:flutter_pro/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_config.dart';

Future<void> mainCommon(String env) async {
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  // Load the JSON config into memory
  await ConfigReader.initialize();

//TODO: Load Firebase to the project
//  await Firebase.initializeApp();

//*Replace SharedPreference with Hydrated Bloc
// This code helps in showing the Onboarding Screen only on the
// first insall of the app. After using the app for second time,
// the Onboarding screen will not be displayed until the app is
//  reinstalled on the device.
  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool _seen = prefs.getBool('seen') ?? false;
  Widget _screen;
  //The screen shown on the first install of the app with onboarding screen
  if (_seen == null || _seen == false) {
    await prefs.setBool('seen', true);
    _screen = OnboardingScreen();
  }
  // The screen shown after the first usage, the onboarding screen
  //  is not displayed anymore to the user.
  else {
    _screen = FlutterPro();
  }

  //Different flavors according to different environment
  switch (env) {
    //For Dev environment
    case Environment.dev:
      var configuredApp = AppConfig(
        appTitle: "FlutterPro Dev",
        buildFlavor: "Development",
        primaryColor: Colors.indigo,
        // TODO: Wrap with Authentication Bloc
        // Wrapped the MyApp with Device Preview to test the UI in different screens
        child: DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => MyApp(_screen),
        ),
      );
      return runApp(configuredApp);
      break;
    //For QA (Staging) environment
    case Environment.stage:
      var configuredApp = AppConfig(
        appTitle: "FlutterPro QA",
        buildFlavor: "Staging",
        primaryColor: Colors.orange,
        // TODO: Wrap with Authentication Bloc
        child: MyApp(_screen),
      );
      return runApp(configuredApp);
      break;
    //For Production environment
    case Environment.prod:
      var configuredApp = AppConfig(
        appTitle: "FlutterPro",
        buildFlavor: "Production",
        primaryColor: Colors.deepPurple,
        // TODO: Wrap with Authentication Bloc
        child: MyApp(_screen),
      );
      return runApp(configuredApp);
      break;
  }
}
