import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/widgets/card/card_example.dart';
import 'package:flutter_up_docs/codes/widgets/card/card_image_exmaple.dart';
import 'package:flutter_up_docs/codes/widgets/card/card_second_example.dart';
import 'package:flutter_up_docs/codes/widgets/card/customize_card_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';
import 'package:flutter_up_docs/widgets/view/widget_plus_title_box.dart';

class UpCardView extends StatelessWidget {
  const UpCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailWidgetBox(
      title: "UpCard",
      widgets: [
        DetailsWidgetModel(
          detail: "UpCard",
          asset: WidgetsAssest.card,
          height: 340,
          widget: const UpCardExample(),
        ),
      ],
    );

    // Padding(
    //   padding: const EdgeInsets.all(15.0),
    //   child: SizedBox(
    //     width: 400,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         UpText(
    //           "Flutter Up Cards",
    //           style: UpStyle(textSize: 25),
    //         ),
    //         const SizedBox(
    //           height: 30,
    //         ),
    //         UpText(
    //           "Card Example",
    //           style: UpStyle(textSize: 20),
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         widgetBox(
    //           widgets: [
    //             const CardExample(),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             const UpCode(
    //               assetCode: WidgetsAssest.card,
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 30,
    //         ),
    //         UpText(
    //           "Card example (without header padding)",
    //           style: UpStyle(textSize: 20),
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         widgetBox(
    //           widgets: [
    //             const CardSecondExample(),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             const UpCode(
    //               assetCode: WidgetsAssest.cardSecond,
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 30,
    //         ),
    //         UpText(
    //           "Image Card example",
    //           style: UpStyle(textSize: 20),
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         widgetBox(
    //           widgets: [
    //             const CardImageExample(),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             const UpCode(
    //               assetCode: WidgetsAssest.cardImage,
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 30,
    //         ),
    //         UpText(
    //           "Customize Card example",
    //           style: UpStyle(textSize: 20),
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         widgetBox(
    //           widgets: [
    //             const CustomizeCardExample(),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             const UpCode(
    //               assetCode: WidgetsAssest.customeCard,
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
