import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/drawer/app_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class DrawerItemCardView extends StatelessWidget {
  const DrawerItemCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UpText(
              "Flutter up drawer ",
              style: UpStyle(textSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UpText(
              "First create your drawer by using drawer item card ",
              style: UpStyle(textSize: 20),
            ),
          ),
          widgetBox(
            widgets: [
              const SizedBox(
                width: 900,
                height: 300,
                child: AppExample(),
              ),
              const SizedBox(
                height: 10,
              ),
              const UpCode(
                assetCode: 'assets/drawer_example.dart',
                height: 1200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: UpText(
                  "Now add you drawer in your Scaffold to use it",
                  style: UpStyle(textSize: 20),
                ),
              ),
              const UpCode(
                assetCode: 'assets/app_example.dart',
                height: 500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
