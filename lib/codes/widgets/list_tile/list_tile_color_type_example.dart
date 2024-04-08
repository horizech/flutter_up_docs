import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';

class UpListTileColorTypeExample extends StatelessWidget {
  const UpListTileColorTypeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 200,
        child: UpListTile(
          isSelected: true,
          title: "Success List Tile",
          leading: UpIcon(icon: Icons.home),
          colorType: UpColorType.success,
        ),
      ),
    );
  }
}
