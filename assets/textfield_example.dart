import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/validation/up_valdation.dart';
import 'package:flutter_up/widgets/up_textfield.dart';

Widget customTextfields() {
  return SizedBox(
    width: 300,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            colorType: UpColorType.secondary,
            validation: UpValidation(isRequired: true),
            style: UpStyle(textBackgroundColor: Colors.red),
            readOnly: true,
            keyboardType: TextInputType.text,
            controller: TextEditingController(text: "a1jh4vhv"),
            label: "Generated No",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            style: UpStyle(
              textfieldBorderColor: Colors.orangeAccent,
              textfieldBorderRadius: 2,
              textfieldBorderWidth: 2,
              textfieldCursorColor: Colors.pink,
              textfieldErrorBorderColor: Colors.amber,
              textfieldFocusedBorderColor: Colors.black,
              textfieldLabelColor: Colors.blueGrey,
              textfieldLabelSize: 12,
              textfieldFilledColor: Colors.cyan[100],
            ),
            controller: TextEditingController(),
            keyboardType: TextInputType.text,
            obscureText: true,
            readOnly: false,
            label: "Name",
          ),
        ),
      ],
    ),
  );
}
