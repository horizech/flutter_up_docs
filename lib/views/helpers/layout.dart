import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/helpers/layout_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class LayoutHelperView extends StatelessWidget {
  const LayoutHelperView({Key? key}) : super(key: key);

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
              "Layout",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Try resizing the window then you will see change from landscape to portrait",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const LayoutExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.layout,
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
