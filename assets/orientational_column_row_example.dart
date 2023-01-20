import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_orientational_column_row.dart';
import 'package:flutter_up/widgets/up_text.dart';

Widget orientationalColumnRow() {
  return Column(
    children: [
      const UpText("Landscape View"),
      SizedBox(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpOrientationalColumnRow(
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.pink[200],
                child: const Center(child: UpText("container1")),
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.blue[200],
                child: const Center(child: UpText("container2")),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const UpText("Portrait view"),
      Column(
        children: [
          Container(
            width: 200,
            height: 100,
            color: Colors.pink[200],
            child: const Center(child: UpText("container1")),
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.blue[200],
            child: const Center(child: UpText("container2")),
          ),
        ],
      )
    ],
  );
}
