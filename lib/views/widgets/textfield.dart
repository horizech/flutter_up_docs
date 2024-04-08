import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/textfields/custom_textfield_example.dart';
import 'package:flutter_up_docs/codes/widgets/textfields/key_textfield_example.dart';
import 'package:flutter_up_docs/codes/widgets/textfields/search_textfield_example.dart';
import 'package:flutter_up_docs/codes/widgets/textfields/textfield_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        // width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            UpText(
              "Flutter up textfields",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Textfields",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                textfields(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.textfield,
                  height: 930,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Password Textfield",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                keyTextfield(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.keyTextfield,
                  height: 800,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Search Textfield",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                searchtextfield(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.searchTextfield,
                  height: 420,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Custom Textfields",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                customTextfields(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.customTextfield,
                  height: 900,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
