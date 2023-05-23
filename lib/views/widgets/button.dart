import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/elevated_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/floating_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/icon_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/image_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/loading_button_example.dart';

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
                style: UpStyle(textSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Elevated Button",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                upButtons(),
                const UpCode(
                  assetCode: 'assets/elevated_button_example.dart',
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
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: UpText(
            //     "Outlined Buttons",
            //     style: UpStyle(textSize: 20),
            //   ),
            // ),
            // widgetBox(
            //   widgets: [
            //     outlinedButtons(),
            //     const UpCode(
            //       assetCode: 'assets/outlined_button_example.dart',
            //       height: 1750,
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 50,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: UpText(
            //     "Text Buttons",
            //     style: UpStyle(textSize: 20),
            //   ),
            // ),
            // widgetBox(
            //   widgets: [
            //     textButtons(),
            //     const UpCode(
            //       assetCode: 'assets/text_button_example.dart',
            //       height: 1750,
            //     ),
            //   ],
            // ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Image Button",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                imageButton(),
                const UpCode(
                  assetCode: 'assets/image_button_example.dart',
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
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                iconButtons(),
                const UpCode(
                  assetCode: 'assets/icon_button_example.dart',
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
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                floatingButtons(),
                const UpCode(
                  assetCode: 'assets/floating_button_example.dart',
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
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                loadingButton(),
                const UpCode(
                  assetCode: 'assets/loading_button_example.dart',
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
