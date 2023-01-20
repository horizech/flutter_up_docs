import 'package:flutter/material.dart';

Widget widgetBox({List<Widget>? widgets}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: const Color.fromARGB(255, 145, 143, 143),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets!.map((e) => e).toList(),
            //  [
            //   example ?? const UpText(""),
            //   code ?? const UpText(""),

            // ],
          ),
        ),
      ),
    ),
  );
}
