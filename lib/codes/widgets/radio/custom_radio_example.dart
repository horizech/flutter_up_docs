import 'package:flutter/material.dart';
import 'package:flutter_up/enums/direction.dart';
import 'package:flutter_up/enums/up_text_direction.dart';
import 'package:flutter_up/models/up_radio_button_items.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_radio_button.dart';
import 'package:flutter_up/widgets/up_text.dart';

class CustomRadioButtonExample extends StatelessWidget {
  const CustomRadioButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 250,
          child: Wrap(
            children: [
              const UpText("Fav Fruit :"),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: UpRadioButton(
                  labelDirection: UpTextDirection.right,
                  direction: UpDirection.vertical,
                  style: UpStyle(
                    radioButtonBorderColor: Colors.pink,
                    radioButtonBorderWidth: 2,
                    radioButtonDisabledFilledColor: Colors.cyan,
                    radioButtonDisabledBorderColor: Colors.brown,
                    radioButtonFilledColor: Colors.green,
                    radioButtonHoverBorderColor: Colors.amber[100],
                    radioButtonLabelColor: Colors.black,
                    radioButtonLabelSize: 12,
                    radioButtonRippleColor: Colors.pink[100],
                  ),
                  items: [
                    UpRadioButtonItem(label: "Apple", value: 1),
                    UpRadioButtonItem(label: "Mango", value: 2),
                  ],
                  onChange: (radioValue) {
                    // do some code
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
            style: UpStyle(
              isDisabled: true,
              radioButtonDisabledBorderColor: Colors.orangeAccent[100],
              radioButtonDisabledFilledColor: Colors.pink[100],
              radioButtonDisabledLabelColor: Colors.greenAccent[200],
            ),
            labelDirection: UpTextDirection.right,
            initialValue: 2,
            items: [
              UpRadioButtonItem(label: "Disabled option 1", value: 1),
              UpRadioButtonItem(label: "Disabled option 2", value: 2),
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
