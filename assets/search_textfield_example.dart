import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_search.dart';

Widget searchtextfield() {
  TextEditingController searchController = TextEditingController();
  return SizedBox(
    width: 300,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpSearch(
            controller: searchController,
            valueChanged: ((value) => {
                  // Perform action
                }),
          ),
        ),
      ],
    ),
  );
}
