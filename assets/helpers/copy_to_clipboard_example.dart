import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/helpers/up_clipboard.dart';
import 'package:flutter_up/helpers/up_toast.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_icon.dart';

Widget copyToClipboard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        UpButton(
          type: UpButtonType.icon,
          child: const UpIcon(
            icon: Icons.content_copy,
          ),
          onPressed: () {
            upCopyTextToClipboard("this is the text");
            UpToast().showToast(
              context: context,
              text: "Copied to clipboard",
              isRounded: true,
              borderRadius: 20,
            );
          },
        ),
      ],
    ),
  );
}
