import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/checkboxes/checkbox_example.dart';
import 'package:flutter_up_docs/codes/widgets/checkboxes/custom_checkbox_example.dart';
import 'package:flutter_up_docs/codes/widgets/checkboxes/rounded_checkbox_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class CheckboxView extends StatelessWidget {
  const CheckboxView({Key? key}) : super(key: key);

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
                "Flutter up Checkbox are elements enhanced with styling and ink ripples.",
                style: UpStyle(textSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Checkboxes",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const CheckBoxes(),
                const UpCode(
                  assetCode: 'assets/checkbox_example.dart',
                  height: 1100,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Custom Checkboxes",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                customCheckboxes(),
                const UpCode(
                  assetCode: 'assets/custom_checkbox_example.dart',
                  height: 800,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Rounded Checkboxes",
                style: UpStyle(
                  textSize: 20,
                ),
              ),
            ),
            widgetBox(
              widgets: [
                roundedCheckboxes(),
                const UpCode(
                  assetCode: 'assets/rounded_checkbox_example.dart',
                  height: 600,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
