import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up_docs/codes/radio/radio_example.dart';
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Flutter Up Radio Buttons",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const Radios(),
                const UpCode(
                  assetCode: 'radio_example.dart',
                  codeHeight: 850,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
