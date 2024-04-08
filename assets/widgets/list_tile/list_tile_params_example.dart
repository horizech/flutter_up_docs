import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpListTileParamsExample extends StatelessWidget {
  const UpListTileParamsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 200,
        child: UpListTile(
          contentPadding: const EdgeInsets.all(8.0),
          title: "List Tile Example",
          isThreeLine: false,
          trailingIcon: Icons.time_to_leave,
          listTileTitleAlignment: ListTileTitleAlignment.titleHeight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.black),
          ),
          subtitle: UpText(
            "Sub title",
            style: UpStyle(textSize: 12),
          ),
          onTap: () {
            // perform action
          },
          leading: const UpIcon(icon: Icons.home),
        ),
      ),
    );
  }
}
