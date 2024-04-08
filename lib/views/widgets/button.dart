import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/elevated_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/floating_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/icon_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/image_button_example.dart';
import 'package:flutter_up_docs/codes/widgets/buttons/loading_button_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

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
            const SizedBox(
              height: 10,
            ),
            UpText(
              "Flutter up buttons",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Elevated Button",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const UpText(
              "Flutter up buttons are elements enhanced with styling and ink ripples.",
              // style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                upButtons(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.elevatedButton,
                  height: 1550,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Image Button",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                imageButton(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.imageButton,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Icon Buttons",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                iconButtons(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.iconButton,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Floating Buttons",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                floatingButtons(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.floatingButton,
                  height: 1400,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Loading Button",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                loadingButton(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.loadingButton,
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
