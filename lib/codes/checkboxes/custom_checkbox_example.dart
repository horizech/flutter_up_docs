import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_text_direction.dart';
import 'package:flutter_up/widgets/up_checkbox.dart';

Widget customCheckboxes() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          isRounded: true,
          roundedBorderRadius: 5,
          borderWidth: 1.5,
          borderColor: Colors.pink,
          activeColor: Colors.blue,
          checkColor: Colors.pink,
          initialValue: true,
          label: "Custom Checkbox",
          labelDirection: UpTextDirection.left,
          onChange: (bool? newcheck) {
            //Do some code
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          labelDirection: UpTextDirection.left,
          isDisable: true,
          isRounded: true,
          roundedBorderRadius: 5,
          initialValue: true,
          borderWidth: 1.5,
          label: "Custom Disabled Checkbox",
        ),
      ),
    ],
  );
}
