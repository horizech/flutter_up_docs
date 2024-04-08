import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';

class UpListTileExample2 extends StatelessWidget {
  const UpListTileExample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 200,
        child: UpListTile(
          style: UpStyle(
            listTileSelectedIconColor: Colors.pink,
            listTileSelectedTextColor: Colors.pink,
            listTileSelectedTileColor: Colors.purple[100],
          ),
          colorType: UpColorType.success,
          title: "Custom List Tile",
          leading: const UpIcon(icon: Icons.style),
        ),
      ),
    );
  }
}
