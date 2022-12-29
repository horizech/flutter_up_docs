import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget floatingButtons() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 50.0,
          buttonType: UpButtonType.floating,
          onPress: () {
            // Perform action
          },
          child: const Icon(
            Icons.more_vert,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 50.0,
          buttonType: UpButtonType.floating,
          colorType: UpColorType.basic,
          onPress: () {
            // Perform action
          },
          child: const Icon(
            Icons.home,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          buttonType: UpButtonType.floating,
          roundedBorderRadius: 50.0,
          colorType: UpColorType.accent,
          onPress: () {
            // Perform action
          },
          child: const Icon(
            Icons.face,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          buttonType: UpButtonType.floating,
          roundedBorderRadius: 50.0,
          colorType: UpColorType.warn,
          onPress: () {
            // Perform action
          },
          child: const Icon(
            Icons.warning,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          buttonType: UpButtonType.floating,
          roundedBorderRadius: 50.0,
          isButtonDisable: true,
          onPress: () {
            // Perform action
          },
          child: const Icon(Icons.menu),
        ),
      ),
    ],
  );
}
