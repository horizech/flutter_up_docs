import 'package:flutter/material.dart';
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
            minLength: 6,
            onSaved: (input) {
              //do some code
            },
            decoration: const InputDecoration(
              labelText: "Username",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            autofillHint: AutofillHints.email,
            keyboardType: TextInputType.emailAddress,
            label: "Email",
            onChanged: (input) {
              //do something
            },
            readOnly: false,
            controller: TextEditingController(),
            decoration: const InputDecoration(
              labelText: "Email",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpTextField(
            controller: TextEditingController(),
            minLength: 6,
            onSaved: (input) => {
              //do some code
            },
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
            ),
          ),
        ),
      ],
    ),
  );
}
