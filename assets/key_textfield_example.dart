import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_key.dart';

Widget keyTextfield() {
  return SizedBox(
    width: 300,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpKey(
            controller: TextEditingController(),
            valueChanged: (value) => {
              // Perform action
            },
          ),
        ),
      ],
    ),
  );
}
