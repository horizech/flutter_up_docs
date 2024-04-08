import 'package:flutter_up/helpers/up_security.dart';

const String key = "avdTjkskl78mndjs";

/// Initialize UpSecurity module (16 characters IV key)
void main() {
  UpSecurity.initialize(key);
  // runApp(App());
}
