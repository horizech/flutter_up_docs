import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Flutter up drawer "),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "First create your drawer by using drawer item card ",
              style: TextStyle(fontSize: 20),
            ),
          ),
          widgetBox(
            widgets: [
              const SizedBox(
                width: 900,
                height: 300,
                child: AppExample(),
              ),
              const UpCode(
                assetCode: 'drawer_example.dart',
                codeHeight: 1200,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Now add you drawer in your Scaffold to use it",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const UpCode(
                assetCode: 'app_example.dart',
                codeHeight: 500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
