import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/helpers/scaffold_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class ScaffoldHelperView extends StatelessWidget {
  const ScaffoldHelperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            UpText(
              "Up Scaffold Helper",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Show snack Bar",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const ScaffoldHelperExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: 'assets/layout_example.dart',
                  height: 800,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
