import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';

import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class DetailWidgetBox extends StatelessWidget {
  final String title;
  final List<DetailsWidgetModel> widgets;
  const DetailWidgetBox(
      {super.key, required this.title, required this.widgets});

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
              title,
              style: UpStyle(textSize: 25),
            ),
            ...widgets.map(
              (e) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  UpText(
                    e.detail,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  widgetBox(
                    widgets: [
                      e.widget,
                      const SizedBox(
                        height: 10,
                      ),
                      UpCode(
                        assetCode: e.asset,
                        height: e.height,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsWidgetModel {
  final String detail;
  final String asset;
  final Widget widget;
  final double height;

  DetailsWidgetModel({
    required this.detail,
    required this.asset,
    required this.widget,
    this.height = 400,
  });
}
