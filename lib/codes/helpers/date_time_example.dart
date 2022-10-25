import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_date_time.dart';
import 'package:flutter_up/widgets/up_textfield.dart';

Widget dateTime() {
  return SizedBox(
    width: 300,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            controller: TextEditingController(
              text: formatSecondsTime(100),
            ),
            readOnly: true,
            decoration: const InputDecoration(
              labelText: "Format seconds time",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            label: "Format minutes time",
            readOnly: true,
            controller: TextEditingController(
              text: formatMinutesTime(2),
            ),
            decoration: const InputDecoration(
              labelText: "Format minutes time",
            ),
          ),
        ),
      ],
    ),
  );
}
