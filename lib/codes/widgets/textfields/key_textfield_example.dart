import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/enums/up_input_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/validation/up_valdation.dart';
import 'package:flutter_up/widgets/up_key.dart';

Widget keyTextfield() {
  return SizedBox(
    width: 300,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpKey(
            lable: 'Password',
            type: UpInputType.outline,
            colorType: UpColorType.primary,
            controller: TextEditingController(),
            valueChanged: (value) => {
              //do some code
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpKey(
            lable: 'Code',
            type: UpInputType.underline,
            style: UpStyle(textfieldFocusedBorderColor: Colors.redAccent),
            validation: UpValidation(
              isRequired: true,
              minLength: 6,
              fixedLengths: [16],
            ),
            controller: TextEditingController(),
            valueChanged: (value) => {
              // Perform action
            },
          ),
        ),
      ],
    ),
  );
}
