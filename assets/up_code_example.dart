import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';

class UpCodeExample extends StatelessWidget {
  const UpCodeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const UpCode(
      assetCode: 'assets/main.dart',
      backgroundColor: Colors.red,
      height: 30,
      language: 'dart',
    );
  }
}
