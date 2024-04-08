import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/checkboxes/checkbox_example.dart';
import 'package:flutter_up_docs/codes/widgets/checkboxes/custom_checkbox_example.dart';
import 'package:flutter_up_docs/codes/widgets/checkboxes/rounded_checkbox_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

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
            const SizedBox(
              height: 10,
            ),
            UpText(
              "Flutter up Checkbox are elements enhanced with styling and ink ripples.",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Checkboxes",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const CheckBoxes(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.checkbox,
                  height: 1100,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Custom Checkboxes",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                customCheckboxes(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.customCheckbox,
                  height: 800,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Rounded Checkboxes",
              style: UpStyle(
                textSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                roundedCheckboxes(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.roundedCheckbox,
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
