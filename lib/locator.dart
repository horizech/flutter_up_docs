import 'package:flutter_up/locator.dart';

void setupLocator() {
  setupFlutterUpLocators([
    FlutterUpLocators.upDialogService,
    FlutterUpLocators.upNavigationService,
    FlutterUpLocators.upScaffoldHelperService,
    FlutterUpLocators.upSearchService,
    FlutterUpLocators.upUrlService
  ]);
  // You can also create your own services
  // ServiceManager.registerLazySingleton(() => KeyService());
  // ServiceManager.registerLazySingleton(() => AuthService());
}
