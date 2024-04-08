import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/dialogs/loading_dialog_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class LoadingDialogView extends StatelessWidget {
  const LoadingDialogView({Key? key}) : super(key: key);

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
              "UpLoadingDialog",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "You need to pass context, UpLoadingDialog and data in show dialog method. In data you can pass text which will show as dialog content with loading widget.This dialog will return completer Id.You need to pass this completer Id to completeDialog method to close your dialog.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const LoadingDialogExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: DialogAssest.loading,
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
