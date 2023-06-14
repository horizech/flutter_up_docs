import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_checkbox.dart';

Widget roundedCheckboxes() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: UpCheckbox(
          colorType: UpColorType.success,
          style: UpStyle(checkboxBorderRadius: 300),
          initialValue: true,
          label: "Rounded Checkbox",
          onChange: (bool? newcheck) {
            // Perform action
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        child: UpCheckbox(
          style: UpStyle(
            checkboxBorderRadius: 500,
            isDisabled: true,
          ),
          label: "Rounded Disabled Checkbox",
        ),
      ),
    ],
  );
}
