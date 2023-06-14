import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/card/card_example.dart';
import 'package:flutter_up_docs/codes/widgets/card/card_image_exmaple.dart';
import 'package:flutter_up_docs/codes/widgets/card/card_second_example.dart';
import 'package:flutter_up_docs/codes/widgets/card/customize_card_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

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
              "Flutter Up Cards",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Card Example",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const CardExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: 'assets/card_example.dart',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Card example (without header padding)",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const CardSecondExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: 'assets/card_second_example.dart',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Image Card example",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const CardImageExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: 'assets/card_image_exmaple.dart',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Customize Card example",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const CustomizeCardExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: 'assets/customize_card_example.dart',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
