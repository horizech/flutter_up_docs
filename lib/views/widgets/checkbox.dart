import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Flutter up Checkbox are elements enhanced with styling and ink ripples.",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Checkboxes",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                checkboxes(),
                const UpCode(
                  assetCode: 'checkbox_example.dart',
                  codeHeight: 500,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Custom Checkboxes",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                customCheckboxes(),
                const UpCode(
                  assetCode: 'custom_checkbox_example.dart',
                  codeHeight: 700,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Rounded Checkboxes",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                roundedCheckboxes(),
                const UpCode(
                  assetCode: 'rounded_checkbox_example.dart',
                  codeHeight: 640,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
