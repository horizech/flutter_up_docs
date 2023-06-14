import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/orientational_column_row/orientational_column_row_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class OrientationalColumnRowView extends StatelessWidget {
  const OrientationalColumnRowView({Key? key}) : super(key: key);

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
              style: UpStyle(textSize: 25),
              "Flutter up orientational_column_row",
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Here in this example we are using container to show portrait and landscape view",
              // style: UpStyle(textSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                orientationalColumnRow(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: 'assets/orientational_column_row_example.dart',
                  height: 900,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
