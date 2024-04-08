import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/dialogs/info_dialog_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

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
            const SizedBox(
              height: 10,
            ),
            UpText(
              "UpInfoDialog",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "You need to pass context, UpInfoDialog() and data in show dialog method. In data you can pass title which will show as dialog title and text which will show as dialog content.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const InfoDialogExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: DialogAssest.info,
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
