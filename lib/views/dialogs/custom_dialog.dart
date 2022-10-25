import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Custom dialog",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Create your custom dialog widget",
                style: TextStyle(fontSize: 20),
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Now extends it from base dialog class",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const UpCode(
                  assetCode: 'custom_dialog.dart',
                  codeHeight: 400,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Now use it",
                style: TextStyle(fontSize: 25),
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
