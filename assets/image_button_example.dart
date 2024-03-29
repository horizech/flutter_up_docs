import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget imageButton() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          type: UpButtonType.image,
          style: UpStyle(
              buttonBackgroundColor: Colors.transparent,
              buttonHoverBackgroundColor: Colors.transparent),
          onPressed: () {
            //Do some code
          },
          image: Image.asset('assets/image.jpeg'),
        ),
      ),
    ],
  );
}
