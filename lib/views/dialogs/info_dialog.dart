import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/dialogs/info_dialog_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class InfoDialogView extends StatelessWidget {
  const InfoDialogView({Key? key}) : super(key: key);

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
                "Info Dialog",
                style: UpStyle(textSize: 25),
              ),
            ),
            widgetBox(
              widgets: [
                const InfoDialogExample(),
                const UpCode(
                  assetCode: 'assets/info_dialog_example.dart',
                  height: 350,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
