import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget iconButtons() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: UpButton(
          colorType: UpColorType.success,
          style: UpStyle(
            buttonWidth: 150,
          ),
          onPressed: () {
            //Do some code
          },
          text: 'Home',
          icon: Icons.home,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        child: UpButton(
          style: UpStyle(
            buttonWidth: 50,
            buttonBorderRadius: 15,
          ),
          colorType: UpColorType.secondary,
          onPressed: () {
            //Do some code
          },
          icon: Icons.stop,
        ),
      ),
    ],
  );
}
