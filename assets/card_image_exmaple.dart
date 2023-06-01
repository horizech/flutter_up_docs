import 'package:flutter/material.dart';
import 'package:flutter_up/controller/up_radio_controller.dart';
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
        SizedBox(
          width: 250,
          child: UpCard(
            image: Image.asset("assets/image2.jpg"),
            header: const UpText("this is header"),
            body: const UpText("this is body"),
          ),
        ),
      ],
    );
  }
}
