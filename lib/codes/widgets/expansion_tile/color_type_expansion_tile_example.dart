import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpExpansionTileColorTypeExample extends StatelessWidget {
  const UpExpansionTileColorTypeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 300,
        child: UpExpansionTile(
          childrenPadding: EdgeInsets.all(8.0),
          title: "Color type Expansion Tile Example",
          colorType: UpColorType.warn,
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
