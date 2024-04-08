import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_security.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:crypto/crypto.dart';

class SecurityEncryptionExample extends StatefulWidget {
  const SecurityEncryptionExample({super.key});

  @override
  State<SecurityEncryptionExample> createState() =>
      _SecurityEncryptionExampleState();
}

class _SecurityEncryptionExampleState extends State<SecurityEncryptionExample> {
  String text = "Hello world";
  String key = md5.convert(utf8.encode("1234567890123456")).toString();
  @override
  void initState() {
    super.initState();
    UpSecurity.initialize("26l0olEGHvjky94xvyYNfA==");
  }

  encrypt() {
    return UpSecurity.encrypt(text: text, key: key);
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
                "Encrypted Text : ",
              ),
              UpText(encrypt() ?? ""),
            ],
          ),
        ),
      ],
    );
  }
}
