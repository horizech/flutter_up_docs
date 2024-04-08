import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/expansion_tile/color_type_expansion_tile_example.dart';
import 'package:flutter_up_docs/codes/widgets/expansion_tile/custom_style_expansion_tile_example.dart';
import 'package:flutter_up_docs/codes/widgets/expansion_tile/expansion_tile_example.dart';
import 'package:flutter_up_docs/codes/widgets/expansion_tile/expansion_tile_properties_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class UpExpansionTileView extends StatelessWidget {
  const UpExpansionTileView({Key? key}) : super(key: key);

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
              "UpExpansionTile",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "UpExpansionTile makes it easier to expand or collapse the tile to reveal or hide the children. You need to pass the title and children (list of widgets) as parameters.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpExpansionTileExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.expansionTile,
                  height: 400,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "In the following example, some UpExpansionTile properties are used. You can pass the title as both text and a widget. If you have provided both title and titleWidget as parameters, title will be of high priority. You can also provide initiallyExpanded (by default false), leading, trailing, subtitle, childrenPadding, expandedAlignment, expandedCrossAxisAlignment and onExpansionChanged method as parameters.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpExpansionTilePropertiesExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.expansionTileProperties,
                  height: 400,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "You can set custom UpStyle properties on UpExpansionTile.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpExpansionTileCustomStyleExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.customStyleExpansionTile,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "You can also pass colorType as a parameter. If you provide both style and colorType, then style will be of high priority.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const UpExpansionTileColorTypeExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: WidgetsAssest.colorTypeExpansionTile,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
