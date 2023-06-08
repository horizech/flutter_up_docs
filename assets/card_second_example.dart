import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/controller/up_radio_controller.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_card.dart';

import 'package:flutter_up/widgets/up_text.dart';

class CardSecondExample extends StatefulWidget {
  const CardSecondExample({Key? key}) : super(key: key);

  @override
  State<CardSecondExample> createState() => _CardSecondExampleState();
}

class _CardSecondExampleState extends State<CardSecondExample> {
  UpRadioController controller = UpRadioController(value: 1);
  int tab = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 250,
            child: UpCard(
              style: UpStyle(cardHeaderPadding: false, cardBodyPadding: true),
              header: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        tab = 1;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color:
                                    tab == 1 ? Colors.red : Colors.transparent),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: UpText(
                              "Tab 1",
                              style: UpStyle(
                                  textColor: UpConfig.of(context)
                                      .theme
                                      .baseColor
                                      .shade900),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        tab = 2;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color:
                                    tab == 2 ? Colors.red : Colors.transparent),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: UpText(
                              "Tab 2",
                              style: UpStyle(
                                  textColor: UpConfig.of(context)
                                      .theme
                                      .baseColor
                                      .shade900),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  Visibility(
                    visible: tab == 1,
                    child: UpText(
                      "Tab 1",
                      style: UpStyle(
                          textColor:
                              UpConfig.of(context).theme.baseColor.shade900),
                    ),
                  ),
                  const SizedBox(),
                  Visibility(
                    visible: tab == 2,
                    child: UpText(
                      "Tab 2",
                      style: UpStyle(
                          textColor:
                              UpConfig.of(context).theme.baseColor.shade900),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
