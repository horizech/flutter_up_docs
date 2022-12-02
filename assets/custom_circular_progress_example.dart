import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_circualar_progress.dart';

Widget customCircularProgress() {
  return Row(children: const [
    Padding(
      padding: EdgeInsets.all(5.0),
      child: UpCircularProgress(
        alignment: Alignment.topLeft,
        color: Colors.green,
        height: 40,
        width: 40,
        strokeWidth: 1,
      ),
    ),
    SizedBox(
      width: 20,
    ),
    Padding(
      padding: EdgeInsets.all(5.0),
      child: UpCircularProgress(
        backgroundColor: Colors.black,
        color: Colors.orange,
        height: 20,
        width: 30,
        value: 0.8,
      ),
    ),
  ]);
}
