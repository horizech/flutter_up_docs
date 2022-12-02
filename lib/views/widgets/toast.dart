import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up_docs/codes/widgets/toast/toast_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class ToastView extends StatelessWidget {
  const ToastView({Key? key}) : super(key: key);

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
                "Flutter up Toast",
                style: TextStyle(fontSize: 25),
              ),
            ),
            widgetBox(
              widgets: [
                toast(context),
                const UpCode(
                  assetCode: 'toast_example.dart',
                  codeHeight: 2100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
