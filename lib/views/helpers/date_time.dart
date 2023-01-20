import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/helpers/date_time_example.dart';
import 'package:flutter_up_docs/codes/helpers/date_time_picker_example.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

class DateTimeView extends StatelessWidget {
  const DateTimeView({Key? key}) : super(key: key);

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
                "Date Time helper functions",
                style: UpStyle(textFontSize: 25),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Date time picker",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const DateTimepickerExample(),
                const UpCode(
                  assetCode: 'date_time_picker_example.dart',
                  codeHeight: 1500,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                style: UpStyle(textFontSize: 20),
                "Date time ",
              ),
            ),
            widgetBox(
              widgets: [
                dateTime(),
                const UpCode(
                  assetCode: 'date_time_example.dart',
                  codeHeight: 680,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
