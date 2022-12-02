import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Flutter up textfields",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Textfields",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                textfields(),
                const UpCode(
                  assetCode: 'textfield_example.dart',
                  codeHeight: 930,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Password Textfield",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                keyTextfield(),
                const UpCode(
                  assetCode: 'key_textfield_example.dart',
                  codeHeight: 420,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Search Textfield",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                searchtextfield(),
                const UpCode(
                  assetCode: 'search_textfield_example.dart',
                  codeHeight: 420,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Custom Textfields",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                customTextfields(),
                const UpCode(
                  assetCode: 'custom_textfield_example.dart',
                  codeHeight: 1150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
