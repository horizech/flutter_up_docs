import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_textfield.dart';

Widget customTextfields() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpTextField(
          readOnly: true,
          keyboardType: TextInputType.text,
          controller: TextEditingController(text: "a1jh4vhv"),
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.solid,
              ),
            ),
          ),
          label: "Generated No",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpTextField(
          controller: TextEditingController(),
          keyboardType: TextInputType.text,
          obscureText: true,
          readOnly: false,
          fixedLengths: const [16],
          label: "Key",
          minLength: 1,
          decoration: const InputDecoration(
            labelText: "Key",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              borderSide: BorderSide(
                width: 1,
                color: Colors.red,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              borderSide: BorderSide(
                width: 1,
                color: Colors.red,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
