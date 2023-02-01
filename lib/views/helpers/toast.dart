import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/helpers/helper_toast_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class HelperToastView extends StatelessWidget {
  const HelperToastView({Key? key}) : super(key: key);

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
                "Toast",
                style: UpStyle(textSize: 25),
              ),
            ),
            widgetBox(
              widgets: [
                const Toast(),
                const UpCode(
                  assetCode: 'assets/helper_toast_example.dart',
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
