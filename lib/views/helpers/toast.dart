import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/helpers/helper_toast_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class ToastHelperView extends StatelessWidget {
  const ToastHelperView({Key? key}) : super(key: key);

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
              "FlutterUp Toast",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "UpToast is also called a Toast Notification message. showtoast method use to show small message which mainly popup at the bottom of the device screen.This method takes context and text.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const Toast(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.toast,
                  height: 500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
