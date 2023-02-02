import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';

class UpCodeExample extends StatelessWidget {
  const UpCodeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0, bottom: 15.0),
      child: SizedBox(
        child: UpCode(
          assetCode: 'assets/main.dart',
          backgroundColor: Colors.red,
          height: 100,
          language: 'dart',
        ),
      ),
    );
  }
}
