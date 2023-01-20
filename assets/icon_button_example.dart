import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget iconButtons() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.icon,
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
          type: UpButtonType.icon,
          onPressed: () {
            //Do some code
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
          type: UpButtonType.icon,
          onPressed: () {
            //Do some code
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
          type: UpButtonType.icon,
          colorType: UpColorType.warn,
          onPressed: () {
            //Do some code
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
          type: UpButtonType.icon,
          onPressed: () {
            //Do some code
          },
          child: const Icon(Icons.menu),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.icon,
          style: UpStyle(isDisabled: true),
          onPressed: () {
            //Do some code
          },
          child: const Icon(Icons.stop),
        ),
      ),
    ],
  );
}
