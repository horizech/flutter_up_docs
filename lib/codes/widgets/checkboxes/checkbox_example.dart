import 'package:flutter/material.dart';

import 'package:flutter_up/controller/up_checkbox_controller.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_checkbox.dart';

class CheckBoxes extends StatefulWidget {
  const CheckBoxes({Key? key}) : super(key: key);

  @override
  State<CheckBoxes> createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  bool isCheck = false;
  UpCheckBoxController checkBoxController1 = UpCheckBoxController(value: true);
  UpCheckBoxController checkBoxController2 = UpCheckBoxController(value: false);
  UpCheckBoxController checkBoxController3 = UpCheckBoxController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
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
                onChange: (value) {
                  value;
                },
                style: UpStyle(isDisabled: true),
                label: "Disabled",
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              UpCheckbox(
                controller: checkBoxController3,
                label: "All",
                onChange: (bool? newcheck) {
                  checkBoxController1.updateValue(newcheck ?? false);
                  checkBoxController2.updateValue(newcheck ?? false);
                  checkBoxController3.value = newcheck ?? false;
                  setState(() {});
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Column(
                  children: [
                    UpCheckbox(
                      controller: checkBoxController1,
                      label: "1",
                      onChange: (bool? newcheck) {
                        debugPrint("new value: $newcheck");
                      },
                    ),
                    UpCheckbox(
                      controller: checkBoxController2,
                      label: "2",
                      onChange: (bool? newcheck) {
                        debugPrint("new value: $newcheck");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
