import 'package:flutter_up/helpers/up_console.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';

navigationServiceExample() async {
  /// Go back
  ServiceManager<UpNavigationService>().goBack();
  ServiceManager<UpNavigationService>().goBack(result: true);

  /// Navigate to route
  ServiceManager<UpNavigationService>().navigateTo("HOME");

  /// Wait for result
  dynamic result =
      await ServiceManager<UpNavigationService>().navigateTo("LOGINSIGNUP");
  upConsole(UpConsoleLevel.info, result);
}
