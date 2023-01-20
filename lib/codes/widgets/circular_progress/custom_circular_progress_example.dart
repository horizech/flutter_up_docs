import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_circualar_progress.dart';

Widget customCircularProgress() {
  return Row(children: [
    const Padding(
      padding: EdgeInsets.all(5.0),
      child: UpCircularProgress(
        colorType: UpColorType.secondary,
        alignment: Alignment.topLeft,
        height: 40,
        width: 40,
        strokeWidth: 1,
      ),
    ),
    const SizedBox(
      width: 20,
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: UpCircularProgress(
        upStyle: UpStyle(circularProgressBarColor: Colors.orange),
        height: 20,
        width: 30,
        value: 0.8,
      ),
    ),
  ]);
}
