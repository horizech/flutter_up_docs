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
          padding: const EdgeInsets.all(5.0),
          child: UpButton(
            onPress: () {
              showUpToast(
                context: context,
                isRounded: true,
                text: "Place your toast message here",
              );
            },
            child: const Text("Toast"),
          ),
        )
      ],
    );
  }
}
