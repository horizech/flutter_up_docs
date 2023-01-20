import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';

import 'package:flutter_up/widgets/up_button.dart';

Widget UpButtons() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPressed: () {
            // Perform action
          },
          text: "Primary",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.secondary,
          onPressed: () {
            // Perform action
          },
          text: "Secondary",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.tertiary,
          onPressed: () {
            // Perform action
          },
          text: "Tertiary",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.warn,
          onPressed: () {
            //Do some code
          },
          text: "Warn",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.success,
          onPressed: () {
            // Perform action
          },
          text: 'Success',
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          style: UpStyle(isDisabled: true),
          onPressed: () {
            //Do some code
          },
          text: "Disabled",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          style: UpStyle(
            buttonBackgroundColor: Colors.white,
            buttonBorderColor: Colors.red,
            buttonBorderRadius: 12,
            buttonBorderWidth: 1,
            buttonHoverBackgroundColor: Colors.red,
            buttonHoverBorderColor: Colors.black,
            buttonHoverTextColor: Colors.black,
            buttonTextColor: Colors.black,
            buttonTextSize: 16,
          ),
          onPressed: () {
            //Do some code
          },
          text: "Custom",
        ),
      )
    ],
  );
}
