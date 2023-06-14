import 'package:flutter/material.dart';

import 'package:flutter_up/helpers/up_datetime_helper.dart';
import 'package:flutter_up/widgets/up_textfield.dart';

Widget dateTime() {
  return SizedBox(
    width: 300,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpTextField(
            controller: TextEditingController(
              text: UpDateTimeHelper.formatSecondsTime(100),
            ),
            readOnly: true,
            label: "Format seconds time",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpTextField(
            label: "Format minutes time",
            readOnly: true,
            controller: TextEditingController(
              text: UpDateTimeHelper.formatMinutesTime(2),
            ),
          ),
        ),
      ],
    ),
  );
}
