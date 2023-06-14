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
            const SizedBox(
              height: 10,
            ),
            UpText(
              "Custom dialog",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Create your custom dialog widget",
              // style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpCode(
                  assetCode: 'assets/custom_dialog_widget.dart',
                  height: 400,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Now extends it from base dialog class",
              // style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpCode(
                  assetCode: 'assets/custom_dialog.dart',
                  height: 300,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Now use it",
              // style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const CustomDialogExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: 'assets/custom_dialog_example.dart',
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
