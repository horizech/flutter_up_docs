import 'package:flutter/material.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/orientational_column_row/orientational_column_row_example.dart';
import 'package:flutter_up_docs/widgets/view/widget_plus_title_box.dart';

class OrientationalColumnRowView extends StatelessWidget {
  const OrientationalColumnRowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailWidgetBox(
      title: "UpOrientationalColumnRow",
      widgets: [
        DetailsWidgetModel(
          detail:
              "You need to pass a list of children in the UpOrientationalColumnRow widget. In landscape view, children will be shown in a row, and in portrait view, they will be shown in a column.You can also pass widths of children, respectively. -1 means the child will take up all available space. If you do not provide widths, children will automatically take up all equal space. When you change your screen view from landscape to portrait, you can inspect the change.",
          asset: WidgetsAssest.orientationalColumnRow,
          height: 550,
          widget: const OrientationalColumnRowExample(),
        ),
      ],
    );
  }
}
