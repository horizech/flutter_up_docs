import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up_docs/codes/widgets/card/loading_card_example.dart';

import 'package:flutter_up_docs/widgets/widget_box.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

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
              child: Text("Flutter up Cards."),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Loading Card",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              widgets: [
                loadingCard(),
                const UpCode(
                  assetCode: 'loading_card_example.dart',
                  codeHeight: 1300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
