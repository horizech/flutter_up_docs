import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/helpers/image_helper_example.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class ImageHelperView extends StatelessWidget {
  const ImageHelperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            UpText(
              "Image Helper",
              style: UpStyle(textSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
              "calculateImageDimension method takes image and return its size.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const ImageHelperExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: HelperAssest.image,
                  height: 800,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
