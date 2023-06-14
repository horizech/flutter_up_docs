import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget imageButton() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: UpButton(
          type: UpButtonType.image,
          style: UpStyle(
            buttonBackgroundColor: Colors.transparent,
            buttonHoverBackgroundColor: Colors.transparent,
            buttonBackgroundImage: Image.asset('assets/image.jpeg'),
          ),
          onPressed: () {
            //Do some code
          },
          // text: 'Image button',
          image: Image.asset('assets/image.jpeg'),
        ),
      ),
    ],
  );
}
