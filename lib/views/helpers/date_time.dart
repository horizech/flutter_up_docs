import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/helpers/date_time_example.dart';
import 'package:flutter_up_docs/codes/helpers/date_time_picker_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class DateTimeHelperView extends StatelessWidget {
  const DateTimeHelperView({Key? key}) : super(key: key);

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
              "Date Time helper functions",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            UpText(
              "Date time picker",
              style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const DateTimepickerExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.dateTimePicker,
                  height: 1500,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Following methods return date formatted according to given format",
            ),
            const UpText(
              "formatSecondsTime method takes seconds and return date in hours:minutes:seconds format.On the other hand formatMinutesTime method takes minutes and return date in hours:minutes format.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                dateTime(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.dateTime,
                  height: 680,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
