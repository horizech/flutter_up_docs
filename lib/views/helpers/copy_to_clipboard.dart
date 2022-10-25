import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up_docs/codes/helpers/copy_to_clipboard_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class CopyToClipboardView extends StatelessWidget {
  const CopyToClipboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Copy to clipboard",
                style: TextStyle(fontSize: 25),
              ),
            ),
            widgetBox(
              widgets: [
                copyToClipboard(context),
                const UpCode(
                  assetCode: 'copy_to_clipboard_example.dart',
                  codeHeight: 400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
