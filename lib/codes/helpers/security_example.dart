import 'package:flutter_up/helpers/up_security.dart';

security() {
  /// Initialize UpSecurity module (16 characters)
  UpSecurity.initialize("___AES_IV_KEY___");

  /// Descrypt text
  String? decryptedResult =
      UpSecurity.decrypt(text: "EncText", key: "1234567890123456");

  /// Encrypt text
  String encryptedResult =
      UpSecurity.encrypt(text: "Text", key: "1234567890123456");
}
