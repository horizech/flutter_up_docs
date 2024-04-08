import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';

class UpListTileExample extends StatelessWidget {
  const UpListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 200,
        child: UpListTile(
          title: "Simple List Tile",
        ),
      ),
    );
  }
}
