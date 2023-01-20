import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/helpers/up_clipboard.dart';
import 'package:flutter_up/helpers/up_toast.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget copyToClipboard(BuildContext context) {
  return Row(
    children: [
      UpButton(
        type: UpButtonType.icon,
        child: const Icon(
          Icons.content_copy,
        ),
        onPressed: () {
          upCopyTextToClipboard("this is the text");
          showUpToast(
            context: context,
            text: "Copied to clipboard",
            isRounded: true,
            borderRadius: 20,
          );
        },
      ),
    ],
  );
}
