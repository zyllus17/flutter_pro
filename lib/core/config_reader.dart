import 'dart:convert';
import 'package:flutter/services.dart';

///JSON Model class for [app_config.json]
abstract class ConfigReader {
  static Map<String, dynamic> _config;

  ///Loads and decodes the json file as a [Map<String, dynamic>] and stores it into _config
  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/app_config.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  /// This function returns the number stored in json as [int]
  static int getDevIncrementAmount() {
    return _config['incrementAmountDev'] as int;
  }

  /// This function returns the number stored in json as [int]
  static int getStageIncrementAmount() {
    return _config['incrementAmountStage'] as int;
  }

  /// This function returns the number stored in json as [int]
  static int getProdIncrementAmount() {
    return _config['incrementAmountProd'] as int;
  }

  /// This function returns the API key stored in json as [String]
  static String getApiKey() {
    return _config['ApiKey'] as String;
  }
  //*If anything is added in the [config.json], then it needs to be added here as well
}
