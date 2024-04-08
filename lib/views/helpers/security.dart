import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/helpers/security_decryption_example.dart';
import 'package:flutter_up_docs/codes/helpers/security_encryption_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class SecurityHelperView extends StatelessWidget {
  const SecurityHelperView({Key? key}) : super(key: key);

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
              style: UpStyle(textSize: 25),
              "Security",
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "First initialize 24 characters IV key in main app.",
            ),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: HelperAssest.security,
              height: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Now encrypt your data by providing text and md5 key.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const SecurityEncryptionExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.securityEncyption,
                  height: 800,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "You can decrypt your data using same encrypted text and md5 key from previous example",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const SecurityDecryptionExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.securityDecyption,
                  height: 800,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
