import 'package:flutter/material.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/up_icon/customize_up_icon_example.dart';
import 'package:flutter_up_docs/codes/widgets/up_icon/up_icon_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_plus_title_box.dart';

class UpIconView extends StatelessWidget {
  const UpIconView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailWidgetBox(
      title: "UpIcon",
      widgets: [
        DetailsWidgetModel(
          detail:
              "UpIcon makes it easier to use icons in your app. You need to pass IconData as a parameter. You can also pass the onTap method, which will be called whenever you tap on the icon.",
          asset: WidgetsAssest.icon,
          height: 350,
          widget: const UpIconExample(),
        ),
        DetailsWidgetModel(
          detail:
              "You can set icon color and icon size properties in UpStyle. You can also pass colorType as a parameter. If you provide both style and colorType as parameters, then style will be of high priority.",
          asset: WidgetsAssest.customeStyleIcon,
          widget: const CustomizeUpIconExample(),
        )
      ],
    );
  }
}
