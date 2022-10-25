import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_search.dart';

seachServiceExample() {
  /// Get stream
  ServiceManager<UpSearchService>().stream$;

  /// Get current value
  ServiceManager<UpSearchService>().current;

  /// Update value
  ServiceManager<UpSearchService>().update("search keyword");
}
