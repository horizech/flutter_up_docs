import 'package:flutter/material.dart';
import 'package:flutter_up_docs/codes/checkbox/checkbox_example.dart';
import 'package:flutter_up_docs/widgets/up_code.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

class CheckboxPage extends StatelessWidget {
  const CheckboxPage({Key? key}) : super(key: key);

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
                  "Flutter up Checkbox are elements enhanced with styling and ink ripples."),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Checkboxes",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              example: checkBoxes(),
              code: const UpCode(
                assetCode: 'checkbox_example.dart',
                codeHeight: 900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
