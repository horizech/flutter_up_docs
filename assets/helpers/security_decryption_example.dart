import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_security.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:crypto/crypto.dart';

class SecurityDecryptionExample extends StatefulWidget {
  const SecurityDecryptionExample({super.key});

  @override
  State<SecurityDecryptionExample> createState() =>
      _SecurityDecryptionExampleState();
}

class _SecurityDecryptionExampleState extends State<SecurityDecryptionExample> {
  String encryptedText = "u8UnWqug9t9RY63MM9KCGg==";
  String key = md5.convert(utf8.encode("1234567890123456")).toString();
  @override
  void initState() {
    super.initState();
    UpSecurity.initialize("26l0olEGHvjky94xvyYNfA==");
  }

  decrypt() {
    return UpSecurity.decrypt(text: encryptedText, key: key);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              const UpText(
                "Decrypted text: ",
              ),
              UpText(decrypt() ?? ""),
            ],
          ),
        ),
      ],
    );
  }
}
