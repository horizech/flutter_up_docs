import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_layout.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              const Text(
                "Layout: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              UpLayout.isPortrait(context)
                  ? const Text("Portrait")
                  : const Text("Landscape"),
            ],
          ),
        ),
      ],
    );
  }
}
