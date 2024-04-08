import 'package:flutter/material.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/appbar/appbar_color_type_example.dart';
import 'package:flutter_up_docs/codes/widgets/appbar/appbar_custom_style_example.dart';
import 'package:flutter_up_docs/codes/widgets/appbar/appbar_drawer_example.dart';
import 'package:flutter_up_docs/codes/widgets/appbar/appbar_example.dart';
import 'package:flutter_up_docs/codes/widgets/appbar/appbar_params_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_plus_title_box.dart';

class UpAppbarView extends StatelessWidget {
  const UpAppbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailWidgetBox(
      title: "UpAppBar",
      widgets: [
        DetailsWidgetModel(
          detail:
              "UpAppBar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. To display the UpAppBar, you need to pass it to the UpScaffold widget.\nNote: UpScaffold is wrapped in a sized box only to show you; as an example, you don't need to wrap it in a sized box. ",
          asset: WidgetsAssest.appBar,
          widget: const UpAppBarExample(),
          height: 350,
        ),
        DetailsWidgetModel(
          detail:
              "You can pass a list of actions and a leading widget as parameters in UpAppBar. In the first example, it is shown how to use actions in UpAppBar. In the second example, title and titleWidget are passed as parameters in UpAppBar. If provided both title and titleWidget, titleWidget will be used as the first priority in UpAppBar.",
          asset: WidgetsAssest.appBarParams,
          widget: const UpAppBarParamsExample(),
        ),
        DetailsWidgetModel(
          detail:
              "You can pass fixedDrawer (true) and drawer widget as parameters in UpScaffold and showToggle (true) as a parameter in UpAppBar. It will display a fixed drawer of some specific size on the left side of view, and the remaining part will be the body. You can also pass a compact drawer as a parameter in UpScaffold. If you want to use the drawer in mobile view, you need to pass the same scaffold key to the UpAppBar and UpScaffold widgets.",
          asset: WidgetsAssest.appBarDrawer,
          widget: const UpAppBarDrawerExample(),
        ),
        DetailsWidgetModel(
          detail:
              "You can pass custom upStyle properties of appBar as style parameter.",
          asset: WidgetsAssest.appBarCustomStyle,
          widget: const UpAppBarCustomStyleExample(),
        ),
        DetailsWidgetModel(
          detail:
              "You can pass colorType as a parameter. All styles of this widget will be updated based on this type. Some color types are primary, secondary, tertiary, warn and success. If you provide both upStyle and colorType, then upStyle will be of high priority.",
          asset: WidgetsAssest.appBarColorType,
          widget: const UpAppBarColorTypeExample(),
        ),
      ],
    );
  }
}
