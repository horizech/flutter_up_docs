import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_url.dart';

urlServiceExample() async {
  await ServiceManager<UpUrlService>().openUrl("https://google.com/");
}
