import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/helpers/copy_to_clipboard_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class CopyToClipboardHelperView extends StatelessWidget {
  const CopyToClipboardHelperView({Key? key}) : super(key: key);

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
              "Copy to clipboard",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Click on the button to copy the text to clipboard.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                copyToClipboard(context),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.copyToClipboard,
                  height: 400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
