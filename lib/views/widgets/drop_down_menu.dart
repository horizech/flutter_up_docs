import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/widgets/drop_down_menu/custom_drop_down_menu_example.dart';
import 'package:flutter_up_docs/codes/widgets/drop_down_menu/drop_down_menu_example.dart';
import 'package:flutter_up_docs/codes/widgets/drop_down_menu/multiple_Selection_drop_down_menu_example.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

class DropDownMenuView extends StatelessWidget {
  const DropDownMenuView({Key? key}) : super(key: key);

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
                "Flutter up drop down menu",
                style: UpStyle(textSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "To use dropdown menu first you need to create UpLabelValuePair like ",
                style: UpStyle(textSize: 20),
              ),
            ),
            const UpCode(
              assetCode: 'assets/constants.dart',
              height: 300,
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                style: UpStyle(textSize: 20),
                "Now initialize dropdown menu ",
              ),
            ),
            widgetBox(
              widgets: [
                const DropDownMenu(),
                const UpCode(
                  assetCode: 'assets/drop_down_menu_example.dart',
                  height: 700,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Multiple Selection dropdown menu",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const MultipleSelectionDropDownMenu(),
                const UpCode(
                  assetCode:
                      'assets/multiple_selection_drop_down_menu_example.dart',
                  height: 1150,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                "Customize dropdown menu",
                style: UpStyle(textSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const CustomDropDownMenu(),
                const UpCode(
                  assetCode: 'assets/custom_drop_down_menu_example.dart',
                  height: 1150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
