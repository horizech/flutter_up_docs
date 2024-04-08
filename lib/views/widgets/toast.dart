import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/toast/toast_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class ToastView extends StatelessWidget {
  const ToastView({Key? key}) : super(key: key);

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
              height: 20,
            ),
            UpText(
              style: UpStyle(textSize: 20),
              "Flutter up Toast",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                toast(context),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.toast,
                  height: 2500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
