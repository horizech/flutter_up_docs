import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/elevated_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/floating_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/icon_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/loading_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/outlined_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/text_button_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({Key? key}) : super(key: key);

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
                "Flutter up buttons are elements enhanced with styling and ink ripples.",
                style: UpStyle(textFontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Elevated Button",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                UpButtons(),
                const UpCode(
                  assetCode: 'elevated_button_example.dart',
                  height: 1550,
                ),
              ],
            ),
            // const Padding(
            //   padding: EdgeInsets.only(
            //     top: 50.0,
            //   ),
            //   child: Divider(
            //     color: Colors.black,
            //     height: 10,
            //     thickness: 1.0,
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Outlined Buttons",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                outlinedButtons(),
                const UpCode(
                  assetCode: 'outlined_button_example.dart',
                  height: 1750,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Text Buttons",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                textButtons(),
                const UpCode(
                  assetCode: 'text_button_example.dart',
                  height: 1750,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Icon Buttons",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                iconButtons(),
                const UpCode(
                  assetCode: 'icon_button_example.dart',
                  height: 1420,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Floating Buttons",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                floatingButtons(),
                const UpCode(
                  assetCode: 'floating_button_example.dart',
                  height: 1400,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Loading Button",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                loadingButton(),
                const UpCode(
                  assetCode: 'loading_button_example.dart',
                  height: 1000,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
