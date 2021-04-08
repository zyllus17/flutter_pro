abstract class Environment {
  //Development of app and new features are done in this environment
  static const dev = 'dev';
  //Staging of app for ensure that all new changes deployed from previous
  //environments are working as intended before they hit production.
  static const stage = 'stage';
  //The app is in operation for their intended end user to use.
  static const prod = 'prod';
}
