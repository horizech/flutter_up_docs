import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/radio/custom_radio_example.dart';
import 'package:flutter_up_docs/codes/widgets/radio/radio_example.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

class RadioView extends StatelessWidget {
  const RadioView({Key? key}) : super(key: key);

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
                "Flutter Up Radio Buttons",
                style: UpStyle(textSize: 25),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Radio Button",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const RadioButtonExample(),
                const UpCode(
                  assetCode: 'assets/radio_example.dart',
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
                "Custom Radio Button",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const CustomRadioButtonExample(),
                const UpCode(
                  assetCode: 'assets/custom_radio_example.dart',
                  height: 1300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
