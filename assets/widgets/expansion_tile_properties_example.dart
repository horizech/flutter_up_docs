import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpExpansionTilePropertiesExample extends StatelessWidget {
  const UpExpansionTilePropertiesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 600,
        child: UpExpansionTile(
          childrenPadding: const EdgeInsets.all(8.0),
          expandedAlignment: Alignment.center,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          subtitle: UpText(
            "This is subtitle widget",
            style: UpStyle(textSize: 10),
          ),
          tilePadding: const EdgeInsets.all(8.0),
          titleWidget: const Row(
            children: [
              UpIcon(icon: Icons.widgets),
              UpText("Title widget"),
            ],
          ),
          maintainState: true,
          trailing: const UpIcon(icon: Icons.tab_outlined),
          onExpansionChanged: (p0) => {},
          title: "ExpansionTile properites Example",
          leading: const UpIcon(icon: Icons.home),
          initiallyExpanded: false,
          children: const [
            UpText('ex1'),
            UpText('ex2'),
          ],
        ),
      ),
    );
  }
}
