import 'package:flutter/material.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/list_tile/list_tile_color_type_example.dart';
import 'package:flutter_up_docs/codes/widgets/list_tile/list_tile_custom_style_example.dart';
import 'package:flutter_up_docs/codes/widgets/list_tile/list_tile_example.dart';
import 'package:flutter_up_docs/codes/widgets/list_tile/list_tile_params_example.dart';
import 'package:flutter_up_docs/codes/widgets/list_tile/list_tile_params_example_1.dart';
import 'package:flutter_up_docs/codes/widgets/list_tile/list_tile_style_plus_colortype_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_plus_title_box.dart';

class UpListTileView extends StatelessWidget {
  const UpListTileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailWidgetBox(
      title: "UpListTile",
      widgets: [
        DetailsWidgetModel(
          detail:
              "UpListTile is a single row that typically contains some text as well as a leading or trailing icon.UpListTile contains one to three lines of text optionally.",
          asset: WidgetsAssest.listTile,
          height: 340,
          widget: const UpListTileExample(),
        ),
        DetailsWidgetModel(
          detail:
              "Some UpListTile parameters are used in the following example:",
          asset: WidgetsAssest.listTileParams,
          widget: const UpListTileParamsExample(),
        ),
        DetailsWidgetModel(
          detail:
              "You can pass title and titleWidget as parameters in UpListTile. If provided both title and titleWidget, titleWidget will be used as the first priority in UpListTile. If provided with leading and leadingIcon as parameters, leading will be used as the first priority. Same case for trailing and trailaingIcon.",
          asset: WidgetsAssest.listTileParams1,
          widget: const UpListTileParamsExample1(),
        ),
        DetailsWidgetModel(
          detail: "You can pass custom Upstyle as parameter in UpListTile.",
          asset: WidgetsAssest.listTileCustomStyle,
          widget: const UpListTileCustomStyleExample(),
        ),
        DetailsWidgetModel(
          detail:
              "You can pass colorType as a parameter. All styles of this widget will be updated based on this type. Some color types are primary, secondary, tertiary, warn and success.",
          asset: WidgetsAssest.listTileColorType,
          widget: const UpListTileColorTypeExample(),
        ),
        DetailsWidgetModel(
          detail:
              "If you provide both upStyle and colorType, then upStyle will be of high priority.",
          asset: WidgetsAssest.listTileExample2,
          widget: const UpListTileExample2(),
        ),
      ],
    );
  }
}
