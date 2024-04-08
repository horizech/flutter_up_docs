import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/helpers/routes_helper_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class RoutesHelperView extends StatelessWidget {
  const RoutesHelperView({Key? key}) : super(key: key);

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
              "Routes Helper",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "Help to get current path, namedPath and current URI from current context.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const RoutesHelperExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.routes,
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
