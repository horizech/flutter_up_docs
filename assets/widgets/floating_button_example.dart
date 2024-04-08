import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_icon.dart';

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
          child: const UpIcon(
            icon: Icons.more_vert,
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
          child: const UpIcon(
            icon: Icons.home,
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
          child: const UpIcon(
            icon: Icons.face,
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
          child: const UpIcon(
            icon: Icons.warning,
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
          child: const UpIcon(icon: Icons.menu),
        ),
      ),
    ],
  );
}
