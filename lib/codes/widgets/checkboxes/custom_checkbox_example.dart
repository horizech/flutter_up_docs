import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_text_direction.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_checkbox.dart';

Widget customCheckboxes() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          initialValue: true,
          label: "Custom Checkbox",
          style: UpStyle(
            checkboxBackgroundColor: Colors.orange,
            checkboxLabelColor: Colors.red,
            checkboxBorderColor: Colors.black,
            checkboxBorderRadius: 2,
            checkboxBorderWidth: 1,
            checkboxCheckedColor: Colors.pink,
            checkboxHoverBorderColor: Colors.blueAccent,
            checkboxRippleColor: Colors.purple[100],
            checkboxLabelSize: 12,
          ),
          labelDirection: UpTextDirection.left,
          onChange: (bool? newcheck) {
            // Perform action
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          initialValue: true,
          style: UpStyle(
              checkboxDisabledBackgroundColor: Colors.red[200],
              checkboxDisabledLabelColor: Colors.green[200],
              checkboxCheckedDisabledColor: Colors.blueGrey[200],
              isDisabled: true),
          labelDirection: UpTextDirection.right,
          label: "Custom diabled checkbox",
        ),
      ),
    ],
  );
}
