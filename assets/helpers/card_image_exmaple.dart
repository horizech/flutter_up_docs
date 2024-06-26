import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/controller/up_radio_controller.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_card.dart';

import 'package:flutter_up/widgets/up_text.dart';

class CardImageExample extends StatefulWidget {
  const CardImageExample({Key? key}) : super(key: key);

  @override
  State<CardImageExample> createState() => _CardImageExampleState();
}

class _CardImageExampleState extends State<CardImageExample> {
  UpRadioController controller = UpRadioController(value: 1);
  int tab = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: SizedBox(
            width: 250,
            child: UpCard(
              image: Image.asset("assets/image.jpeg"),
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
        ),
      ],
    );
  }
}
