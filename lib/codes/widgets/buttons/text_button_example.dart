import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_text.dart';

Widget textButtons() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.text,
          onPressed: () {
            // Perform action
          },
          child: UpText(
            "Primary",
            style: UpStyle(textColor: Colors.white),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.secondary,
          type: UpButtonType.text,
          onPressed: () {
            //Do some code
          },
          child: const UpText("Secondary"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.text,
          colorType: UpColorType.tertiary,
          onPressed: () {
            //Do some code
          },
          child: const UpText("Tertiary"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.text,
          colorType: UpColorType.warn,
          onPressed: () {
            //Do some code
          },
          child: const UpText("Warn"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.text,
          colorType: UpColorType.success,
          onPressed: () {
            //Do some code
          },
          child: const UpText("Sucess"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.text,
          style: UpStyle(isDisabled: true),
          onPressed: () {
            //Do some code
          },
          child: const UpText("Disabled"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.text,
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
          child: const UpText("Custom"),
        ),
      ),
    ],
  );
}
