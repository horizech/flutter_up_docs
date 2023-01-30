import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/circular_progress/circular_progress_example.dart';
import 'package:flutter_up_docs/codes/widgets/circular_progress/custom_circular_progress_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class CircularProgressView extends StatelessWidget {
  const CircularProgressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Flutter Up  Circular Progress",
                style: UpStyle(textFontSize: 25),
              ),
            ),
            widgetBox(
              widgets: [
                circularProgress(),
                const UpCode(
                  assetCode: 'circular_progress_example.dart',
                  height: 200,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Custom Flutter Up Circular Progress",
                style: UpStyle(textFontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                customCircularProgress(),
                const UpCode(
                  assetCode: 'custom_circular_progress_example.dart',
                  height: 550,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
