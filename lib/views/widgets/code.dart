import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';

class UpCodeView extends StatelessWidget {
  const UpCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            UpText(
              "UpCode",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "In UpCode widget you can pass assetCode, dart language, height as parameters.It also has a copy button which will copy all code on clipboard.",
            ),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: WidgetsAssest.code,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
