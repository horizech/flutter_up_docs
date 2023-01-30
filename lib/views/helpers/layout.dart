import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/helpers/layout_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({Key? key}) : super(key: key);

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
                "Layout",
                style: UpStyle(textFontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Try resizing the window then you will see change from landscape to portrait",
                style: UpStyle(),
              ),
            ),
            widgetBox(
              widgets: [
                const LayoutExample(),
                const UpCode(
                  assetCode: 'layout_example.dart',
                  height: 800,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
