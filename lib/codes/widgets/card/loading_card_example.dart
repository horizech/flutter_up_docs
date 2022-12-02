import 'package:flutter/material.dart';

import 'package:flutter_up/widgets/up_loading_card.dart';

Widget loadingCard() {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpLoadingCard(
          text: "Loading Card",
          color: Colors.pink[200],
          borderOnForeground: true,
          shadowColor: Colors.pink,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    ],
  );
}
