import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';

class UpListTileCustomStyleExample extends StatelessWidget {
  const UpListTileCustomStyleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: SizedBox(
              width: 200,
              child: UpListTile(
                style: UpStyle(
                  listTileColor: Colors.red,
                  listTileFocusedColor: Colors.orange[100],
                  listTileHoveredColor: Colors.cyan[100],
                  listTileIconColor: Colors.pink,
                  listTileTextColor: Colors.black45,
                ),
                title: "List Tile",
                leading: const UpIcon(icon: Icons.home),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: SizedBox(
              width: 200,
              child: UpListTile(
                style: UpStyle(
                  listTileSelectedIconColor:
                      const Color.fromRGBO(42, 194, 121, 1),
                  listTileIconColor: Colors.yellowAccent,
                  listTileSelectedTileColor:
                      const Color.fromARGB(255, 163, 37, 186),
                ),
                isSelected: true,
                title: "Selected List tile",
                leadingIcon: Icons.style,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
