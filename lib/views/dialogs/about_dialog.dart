import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up_docs/codes/dialogs/about_dialog_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class AboutDialogView extends StatelessWidget {
  const AboutDialogView({Key? key}) : super(key: key);

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
                "About Dialog",
                style: TextStyle(fontSize: 25),
              ),
            ),
            widgetBox(
              widgets: [
                const AboutDialogExample(),
                const UpCode(
                  assetCode: 'about_dialog_example.dart',
                  codeHeight: 350,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
