import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/expansion_tile/expansion_tile_example.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

class ExpansionTileView extends StatelessWidget {
  const ExpansionTileView({Key? key}) : super(key: key);

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
                "Flutter Up Expansion Tile",
                style: UpStyle(textSize: 25),
              ),
            ),
            widgetBox(
              widgets: [
                const UpExpansionTileExample(),
                const UpCode(
                  assetCode: 'assets/expansion_tile_example.dart',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
