import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';

import 'package:flutter_up/widgets/up_button.dart';

Widget UpButtons() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPressed: () {
            // Perform action
          },
          text: "Primary",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.secondary,
          onPressed: () {
            // Perform action
          },
          text: "Secondary",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.tertiary,
          style: UpStyle(
            buttonBackgroundImage: Image.asset('assets/image2.jpg'),
          ),
          // icon: Icons.add,
          // image: Image.asset('assets/image.jpeg'),
          onPressed: () {
            // Perform action
          },
          text: "Tertiary",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.warn,
          onPressed: () {
            //Do some code
          },
          text: "Warn",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.success,
          onPressed: () {
            // Perform action
          },
          text: 'Success',
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          style: UpStyle(isDisabled: true),
          onPressed: () {
            //Do some code
          },
          text: "Disabled",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.secondary,
          style: UpStyle(
            buttonBackgroundImage: Image.asset('assets/image.jpeg'),
            buttonBackgroundGradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 190, 125, 201),
                Color.fromARGB(255, 241, 219, 187)
              ],
            ),
          ),
          onPressed: () {
            //Do some code
          },
          text: "Gradient",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          style: UpStyle(
            buttonBorderTopStyle: UpStyle(
              buttonBorderColor: Colors.orange,
              buttonBorderWidth: 5,
            ),
            buttonBorderRadius: 12,
            buttonTextFit: BoxFit.contain,
            buttonBorderBottomStyle: UpStyle(
              buttonBorderColor: Colors.purple,
              buttonBorderWidth: 5,
              buttonHoverBorderColor: Colors.orange,
            ),
            buttonBorderLeftStyle: UpStyle(
              buttonBorderColor: Colors.pink,
              buttonBorderWidth: 5,
              buttonHoverBorderColor: Colors.green,
            ),
            buttonBorderRightStyle: UpStyle(
              buttonBorderColor: Colors.black,
              buttonBorderWidth: 5,
              buttonHoverBorderColor: Colors.grey,
            ),
            buttonBackgroundColor: Colors.white,
            buttonBorderColor: Colors.red,
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
          text: "Custom",
        ),
      ),
    ],
  );
}
