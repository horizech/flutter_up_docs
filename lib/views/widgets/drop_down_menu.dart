import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up_docs/codes/drop_down_menu/custom_drop_down_menu_example.dart';
import 'package:flutter_up_docs/codes/drop_down_menu/drop_down_menu_example.dart';
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Flutter up drop down menu",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "To use dropdown menu first you need to create UpLabelValuePair like ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const UpCode(
              assetCode: 'constants.dart',
              codeHeight: 300,
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Now initialize dropdown menu ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const DropDownMenu(),
                const UpCode(
                  assetCode: 'drop_down_menu_example.dart',
                  codeHeight: 700,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Customize dropdown menu",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                const CustomDropDownMenu(),
                const UpCode(
                  assetCode: 'custom_drop_down_menu_example.dart',
                  codeHeight: 1150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
