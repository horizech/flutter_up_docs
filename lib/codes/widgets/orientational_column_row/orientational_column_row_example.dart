import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_orientational_column_row.dart';

Widget orientationalColumnRow() {
  return Column(
    children: [
      const Text("Landscape View"),
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
                child: const Center(child: Text("container1")),
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.blue[200],
                child: const Center(child: Text("container2")),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text("Portrait view"),
      Column(
        children: [
          Container(
            width: 200,
            height: 100,
            color: Colors.pink[200],
            child: const Center(child: Text("container1")),
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.blue[200],
            child: const Center(child: Text("container2")),
          ),
        ],
      )
    ],
  );
}
