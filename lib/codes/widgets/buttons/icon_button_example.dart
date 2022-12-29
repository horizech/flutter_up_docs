import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget iconButtons() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 3.0,
          buttonType: UpButtonType.icon,
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
          roundedBorderRadius: 3.0,
          buttonType: UpButtonType.icon,
          colorType: UpColorType.basic,
          onPress: () {
            // Perform action
          },
          child: const Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 3.0,
          buttonType: UpButtonType.icon,
          colorType: UpColorType.accent,
          onPress: () {
            // Perform action
          },
          child: const Icon(
            Icons.face,
            color: Colors.yellow,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          roundedBorderRadius: 3.0,
          buttonType: UpButtonType.icon,
          colorType: UpColorType.warn,
          onPress: () {
            // Perform action
          },
          child: const Icon(
            Icons.warning,
            color: Colors.red,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          isRounded: true,
          buttonType: UpButtonType.icon,
          roundedBorderRadius: 3.0,
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
