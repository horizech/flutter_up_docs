import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/models/up_radio_button_items.dart';
import 'package:flutter_up/widgets/up_radio_button.dart';
import 'package:flutter_up/widgets/up_text.dart';

class RadioButtonExample extends StatelessWidget {
  const RadioButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? gender;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 250,
          child: Row(
            children: [
              const Expanded(child: UpText("Gender :")),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: UpRadioButton(
                  items: [
                    UpRadioButtonItem(label: "Male", value: "m"),
                    UpRadioButtonItem(label: "Female", value: "fm"),
                  ],
                  onChange: (radioValue) {
                    gender = radioValue;
                    debugPrint(gender);
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpRadioButton(
            colorType: UpColorType.secondary,
            initialValue: 2,
            items: [
              UpRadioButtonItem(label: "Option 1", value: 1),
              UpRadioButtonItem(label: "Option 2", value: 2),
            ],
            onChange: (radioValue) {
              // do some code
            },
          ),
        ),
      ],
    );
  }
}
