import 'package:flutter/material.dart';
import 'package:flutter_up/controller/up_radio_controller.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_card.dart';

import 'package:flutter_up/widgets/up_text.dart';

class CardExample extends StatefulWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  State<CardExample> createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  UpRadioController controller = UpRadioController(value: 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 250,
          child: UpCard(
            header: UpText(
              "this is header",
              style: UpStyle(textColor: Colors.white),
            ),
            body: UpText(
              "this is body",
              style: UpStyle(textColor: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
