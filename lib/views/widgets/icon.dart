import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/up_icon/up_icon_example.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

class UpIconView extends StatelessWidget {
  const UpIconView({Key? key}) : super(key: key);

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
              "Flutter Up Icon",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpIconExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: 'assets/up_icon_example.dart',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
