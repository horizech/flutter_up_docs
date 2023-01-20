import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_checkbox.dart';

Widget checkboxes() {
  bool isCheck = true;
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          label: "Primary",

          //by default it will be primary
          // colorType: UpColorType.primary,
          onChange: (bool? newcheck) {
            debugPrint("new value: $isCheck");
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          label: "Secondary",
          colorType: UpColorType.secondary,
          initialValue: true,
          onChange: (bool? newcheck) {
            debugPrint("new value: $isCheck");
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          label: "Tertiary",
          colorType: UpColorType.tertiary,
          onChange: (bool? newcheck) {
            debugPrint("new value: $isCheck");
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          label: "Warn",
          initialValue: true,
          colorType: UpColorType.warn,
          onChange: (bool? newcheck) {
            debugPrint("new value: $isCheck");
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          style: UpStyle(isDisabled: true),
          label: "Disabled",
        ),
      ),
    ],
  );
}
