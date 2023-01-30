import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                style: UpStyle(textFontSize: 25),
                "Security",
              ),
            ),
            const UpCode(
              assetCode: 'security_example.dart',
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
