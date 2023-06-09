import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_toast.dart';
import 'package:flutter_up/widgets/up_button.dart';

class Toast extends StatelessWidget {
  const Toast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpButton(
            onPressed: () {
              UpToast().showToast(
                context: context,
                isRounded: true,
                text: "Place your toast message here",
              );
            },
            text: "Toast",
          ),
        )
      ],
    );
  }
}
