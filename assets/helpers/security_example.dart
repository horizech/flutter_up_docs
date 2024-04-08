import 'package:flutter_up/helpers/up_security.dart';

const String key = "26l0olEGHvjky94xvyYNfA==";

/// Initialize UpSecurity module (16 characters IV key)
void main() {
  UpSecurity.initialize(key);
  // runApp(App());
}
