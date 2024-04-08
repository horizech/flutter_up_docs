import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_icon.dart';

class UpIconExample extends StatelessWidget {
  const UpIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: UpIcon(
        semanticLabel: "Add",
        icon: Icons.add,
        onTap: () {
          // Perform action
        },
      ),
    );
  }
}
