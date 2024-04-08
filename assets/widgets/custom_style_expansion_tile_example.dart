import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_text.dart';

class CustomStyleUpExpansionTileExample extends StatelessWidget {
  const CustomStyleUpExpansionTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 300,
        child: UpExpansionTile(
          childrenPadding: const EdgeInsets.all(8.0),
          title: "Custom styles",
          style: UpStyle(
            expansionTileBackgroundColor:
                const Color.fromARGB(255, 67, 183, 32),
            expansionTileCollapsedBackgroundColor: Colors.blue,
            expansionTileCollapsedIconColor: Colors.blueAccent,
            expansionTileCollapsedTextColor: Colors.blueGrey,
            expansionTileDividerColor: Colors.red.shade100,
            expansionTileIconColor: Colors.red,
            expansionTileTextColor: Colors.redAccent,
          ),
          leading: UpIcon(
            icon: Icons.home,
            style: UpStyle(iconColor: Colors.red),
          ),
          children: const [
            UpText('ex1'),
            UpText('ex2'),
          ],
        ),
      ),
    );
  }
}
