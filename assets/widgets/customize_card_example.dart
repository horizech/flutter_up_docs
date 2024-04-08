import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/controller/up_radio_controller.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_card.dart';

import 'package:flutter_up/widgets/up_text.dart';

class CustomizeCardExample extends StatefulWidget {
  const CustomizeCardExample({Key? key}) : super(key: key);

  @override
  State<CustomizeCardExample> createState() => _CustomizeCardExampleState();
}

class _CustomizeCardExampleState extends State<CustomizeCardExample> {
  UpRadioController controller = UpRadioController(value: 1);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: UpCard(
              style: UpStyle(
                cardHeaderColor: Colors.red,
                cardBodyColor: Colors.pink,
                cardRadius: 20,
                cardWidth: 200,
              ),
              header: UpText(
                "this is header",
                style: UpStyle(
                    textColor: UpConfig.of(context).theme.baseColor.shade900),
              ),
              body: UpText(
                "this is body",
                style: UpStyle(
                    textColor: UpConfig.of(context).theme.baseColor.shade900),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
