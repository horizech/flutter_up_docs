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
          type: UpButtonType.floating,
          onPressed: () {
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
          type: UpButtonType.floating,
          onPressed: () {
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
          type: UpButtonType.floating,
          onPressed: () {
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
          type: UpButtonType.floating,
          colorType: UpColorType.warn,
          onPressed: () {
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
          type: UpButtonType.floating,
          onPressed: () {
            // Perform action
          },
          child: const Icon(Icons.menu),
        ),
      ),
    ],
  );
}
