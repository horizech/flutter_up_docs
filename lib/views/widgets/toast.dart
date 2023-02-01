import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/toast/toast_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                style: UpStyle(textSize: 20),
                "Flutter up Toast",
              ),
            ),
            widgetBox(
              widgets: [
                toast(context),
                const UpCode(
                  assetCode: 'assets/toast_example.dart',
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
