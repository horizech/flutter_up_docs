import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';

class UpListTileExample extends StatelessWidget {
  const UpListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: SizedBox(
              width: 200,
              child: UpListTile(
                contentPadding: EdgeInsets.all(8.0),
                title: "List Tile",
                leading: UpIcon(icon: Icons.home),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 200,
              child: UpListTile(
                style: UpStyle(
                  listTileColor: Colors.red,
                  listTileFocusedColor: Colors.orange[100],
                  listTileHoveredColor: Colors.cyan[100],
                  listTileIconColor: Colors.pink,
                  listTileSelectedColor: Colors.red[100],
                  listTileSelectedTileColor: Colors.purple[100],
                  listTileTextColor: Colors.black45,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.black),
                ),
                contentPadding: const EdgeInsets.all(8.0),
                title: "Custom List Tile",
                leading: const UpIcon(icon: Icons.style),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
