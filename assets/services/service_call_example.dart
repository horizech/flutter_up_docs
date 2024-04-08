import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';
import 'package:flutter_up_docs/constants.dart';

serviceCallExample() {
  // ServiceManager<Your desired Service Name>().methodCall;
  ServiceManager<UpNavigationService>().navigate(path: Routes.home);
}
