import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_icon.dart';

class UpIconExample extends StatelessWidget {
  const UpIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: UpIcon(
            semanticLabel: "Add",
            icon: Icons.add,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UpIcon(
            semanticLabel: "Subject",
            shadows: const [],
            icon: Icons.subject,
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
