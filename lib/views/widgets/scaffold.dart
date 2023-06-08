import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/scaffold/scaffold_example.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

class ScaffoldView extends StatelessWidget {
  const ScaffoldView({Key? key}) : super(key: key);

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
                "Flutter Up Scaffold",
                style: UpStyle(textSize: 25),
              ),
            ),
            widgetBox(
              widgets: [
                const SizedBox(height: 200, child: UpScaffoldExample()),
                const UpCode(
                  assetCode: 'assets/scaffold_example.dart',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
