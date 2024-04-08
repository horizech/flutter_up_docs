import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/list_tile/list_tile_example.dart';
import 'package:flutter_up_docs/codes/widgets/scaffold/scaffold_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';
import 'package:flutter_up_docs/widgets/view/widget_plus_title_box.dart';

class UpScaffoldView extends StatelessWidget {
  const UpScaffoldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailWidgetBox(
      title: "UpScaffold",
      widgets: [
        DetailsWidgetModel(
          detail:
              "UpListTile is a single row that typically contains some text as well as a leading or trailing icon.UpListTile contains one to three lines of text optionally.",
          asset: WidgetsAssest.listTile,
          height: 340,
          widget: const UpScaffoldExample(),
        ),
      ],
    );

    Padding(
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
              "Flutter Up Scaffold",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const SizedBox(height: 200, child: UpScaffoldExample()),
                const SizedBox(
                  height: 10,
                ),
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
