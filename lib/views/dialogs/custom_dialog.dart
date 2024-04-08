import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/dialogs/custom_dialog_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

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
              "Create your custom dialog widget using UpAlretDialog, pass completerId in this widget. After dialog action completition, call completeDialog method by passing context, completerId and result you want to return from dialog widget.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpCode(
                  assetCode: DialogAssest.customDialogWidget,
                  height: 400,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Now create custom dialog component and extends it from UpBaseDialog class. Override show method it it, call show dialog, pass context and your previously created dialog widget in it.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpCode(
                  assetCode: DialogAssest.customDialog,
                  height: 300,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Now call show dialog method on button click.It will return completerId.Pass this completerId to onDialogComplete method which will return result returned by our dilog widget.",
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
                  assetCode: DialogAssest.customDialogExample,
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
