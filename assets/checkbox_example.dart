import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_checkbox.dart';

Widget checkboxes() {
  bool isCheck = true;
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpCheckbox(
          initialValue: true,
          label: "Check me",
          onChange: (bool? newcheck) {
            isCheck = newcheck ?? false;
            debugPrint("new value: $isCheck");
          },
        ),
      ),
       Padding(
        padding: EdgeInsets.all(5.0),
        child: UpCheckbox(
          isDisable: true,
          label: "Disabled",
        ),
      ),
    ],
  );
}
