import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/dialogs/custom_dialog_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class CustomDialogView extends StatelessWidget {
  const CustomDialogView({Key? key}) : super(key: key);

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
                "Custom dialog",
                style: UpStyle(textFontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Create your custom dialog widget",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const UpCode(
                  assetCode: 'custom_dialog_widget.dart',
                  codeHeight: 400,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Now extends it from base dialog class",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const UpCode(
                  assetCode: 'custom_dialog.dart',
                  codeHeight: 300,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Now use it",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const CustomDialogExample(),
                const UpCode(
                  assetCode: 'custom_dialog_example.dart',
                  codeHeight: 400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
