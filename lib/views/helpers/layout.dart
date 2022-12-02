import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up_docs/codes/helpers/layout_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({Key? key}) : super(key: key);

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
                "Layout",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Try resizing the window then you will see change from landscape to portrait",
                style: TextStyle(fontSize: 16),
              ),
            ),
            widgetBox(
              widgets: [
                const LayoutExample(),
                const UpCode(
                  assetCode: 'layout_example.dart',
                  codeHeight: 500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
