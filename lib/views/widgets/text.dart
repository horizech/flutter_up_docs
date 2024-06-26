import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/up_text/up_text_example.dart';
import 'package:flutter_up_docs/codes/widgets/up_text/up_text_types_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class UpTextView extends StatelessWidget {
  const UpTextView({Key? key}) : super(key: key);

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
              "UpText",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "UpText makes it easier to use default theme based text in your app. You need to pass text as a parameter in the UpText widget.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpTextExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.text,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "UpText types",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpTextTypesExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.textTypes,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
