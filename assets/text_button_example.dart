import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget textButtons() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 3.0,
          buttonType: UpButtonType.text,
          onPress: () {
            // Perform action
          },
          child: const Text(
            "Primary",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 3.0,
          buttonType: UpButtonType.text,
          colorType: UpColorType.basic,
          onPress: () {
            // Perform action
          },
          child: const Text("Basic"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 3.0,
          buttonType: UpButtonType.text,
          colorType: UpColorType.accent,
          onPress: () {
            // Perform action
          },
          child: const Text("Accent"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 3.0,
          buttonType: UpButtonType.text,
          colorType: UpColorType.warn,
          onPress: () {
            // Perform action
          },
          child: const Text("Warn"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          buttonType: UpButtonType.text,
          isRounded: true,
          roundedBorderRadius: 3.0,
          isButtonDisable: true,
          onPress: () {
            // Perform action
          },
          child: const Text("Disabled"),
        ),
      )
    ],
  );
}
