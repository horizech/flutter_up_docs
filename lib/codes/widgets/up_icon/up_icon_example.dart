import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_icon.dart';

class UpIconExample extends StatelessWidget {
  const UpIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UpIcon(
            semanticLabel: "Add",
            shadows: const [],
            icon: Icons.add,
            style: UpStyle(
              iconSize: 25,
              iconColor: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
