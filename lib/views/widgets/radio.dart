import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/radio/custom_radio_example.dart';
import 'package:flutter_up_docs/codes/widgets/radio/radio_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

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
            const SizedBox(
              height: 10,
            ),
            UpText(
              "Flutter Up Radio Buttons",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Radio Button",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const RadioButtonExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.radio,
                  height: 1100,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Custom Radio Button",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const CustomRadioButtonExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.customRadio,
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
