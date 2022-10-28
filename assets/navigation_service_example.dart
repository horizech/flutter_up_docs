import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';

navigationServiceExample() async {
  /// Go back
  ServiceManager<UpNavigationService>().goBack();

  /// Navigate to route
  ServiceManager<UpNavigationService>().navigateToNamed("HOME");

  /// Navigate to route replacing current route and also can send param and queryparams
  ServiceManager<UpNavigationService>().navigateToNamed(
    "HOME",
    replace: true,
    params: {},
    queryParams: {},
  );

  /// Navigate to route  path
  ServiceManager<UpNavigationService>().navigateTo(path: "HOME");
}
