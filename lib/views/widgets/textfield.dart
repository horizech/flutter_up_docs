import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/textfields/custom_textfield_example.dart';
import 'package:flutter_up_docs/codes/widgets/textfields/key_textfield_example.dart';
import 'package:flutter_up_docs/codes/widgets/textfields/search_textfield_example.dart';
import 'package:flutter_up_docs/codes/widgets/textfields/textfield_example.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Flutter up textfields",
                style: UpStyle(textSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Textfields",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                textfields(),
                const UpCode(
                  assetCode: 'assets/textfield_example.dart',
                  height: 930,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Password Textfield",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                keyTextfield(),
                const UpCode(
                  assetCode: 'assets/key_textfield_example.dart',
                  height: 800,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Search Textfield",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                searchtextfield(),
                const UpCode(
                  assetCode: 'assets/search_textfield_example.dart',
                  height: 420,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Custom Textfields",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                customTextfields(),
                const UpCode(
                  assetCode: 'assets/custom_textfield_example.dart',
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
