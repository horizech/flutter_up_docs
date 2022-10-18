import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ExpansionTile(
          leading: Icon(Icons.design_services),
          title: Text("Services"),
          children: [],
        ),
        ExpansionTile(
          leading: Icon(Icons.widgets),
          title: Text("Widgets"),
          children: [
            ListTile(
              leading: Text(""),
              title: Text("Buttons"),
            ),
            ListTile(
              leading: Text(""),
              title: Text("TextFields"),
            )
          ],
        ),
        ExpansionTile(
          leading: Icon(Icons.color_lens),
          title: Text("Themes"),
          children: [],
        ),
      ],
    );
  }
}
