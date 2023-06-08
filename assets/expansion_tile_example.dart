import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpExpansionTileExample extends StatelessWidget {
  const UpExpansionTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        child: UpExpansionTile(
          childrenPadding: EdgeInsets.all(8.0),
          title: "Example",
          leading: UpIcon(icon: Icons.home),
          children: [
            UpText('ex1'),
            UpText('ex2'),
          ],
        ),
      ),
    );
  }
}
