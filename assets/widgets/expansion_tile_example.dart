import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpExpansionTileExample extends StatelessWidget {
  const UpExpansionTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 300,
        child: UpExpansionTile(
          title: "Simple Expansion tile",
          children: [
            UpText('ex1'),
            UpText('ex2'),
          ],
        ),
      ),
    );
  }
}
