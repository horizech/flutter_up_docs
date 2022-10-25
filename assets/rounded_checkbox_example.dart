import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_checkbox.dart';

Widget roundedCheckboxes() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          isRounded: true,
          roundedBorderRadius: 20,
          borderWidth: 1,
          borderColor: Colors.red,
          activeColor: Colors.black,
          checkColor: Colors.orange,
          initialValue: true,
          label: "Custom Checkbox",
          onChange: (bool? newcheck) {
            //Do some code
          },
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(5.0),
        child: UpCheckbox(
          isDisable: true,
          isRounded: true,
          roundedBorderRadius: 20,
          initialValue: true,
          borderWidth: 1,
          label: "Rounded Disabled Checkbox",
        ),
      ),
    ],
  );
}
