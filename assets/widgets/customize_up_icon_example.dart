import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_icon.dart';

class CustomizeUpIconExample extends StatelessWidget {
  const CustomizeUpIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UpIcon(
            shadows: const [],
            icon: Icons.subject,
            style: UpStyle(
              iconSize: 25,
              iconColor: Colors.red,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: UpIcon(
            icon: Icons.toys,
            colorType: UpColorType.secondary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UpIcon(
            icon: Icons.inbox,
            colorType: UpColorType.secondary,
            style: UpStyle(
              iconSize: 12,
              iconColor: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
