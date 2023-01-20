import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/validation/up_valdation.dart';
import 'package:flutter_up/widgets/up_textfield.dart';

Widget textfields() {
  TextEditingController emailController = TextEditingController();
  return SizedBox(
    width: 300,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            controller: emailController,
            onSaved: (input) {
              // Perform action
            },
            label: "Username",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            colorType: UpColorType.secondary,
            autofillHint: AutofillHints.email,
            keyboardType: TextInputType.emailAddress,
            validation: UpValidation(isEmail: true),
            label: "Email",
            onChanged: (input) {
              //do something
            },
            readOnly: false,
            controller: TextEditingController(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            colorType: UpColorType.tertiary,
            controller: TextEditingController(),
            validation: UpValidation(minLength: 6),
            onSaved: (input) => {
              //do some code
            },
            obscureText: true,
            label: "Password",
          ),
        ),
      ],
    ),
  );
}
