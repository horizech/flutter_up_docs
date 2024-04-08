import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpListTileParamsExample1 extends StatelessWidget {
  const UpListTileParamsExample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // If provided, both title and title widget => title widget
    // If provided, both leading and leading icon => leading widget
    // If provided, both trailing and trailing icon => trailing
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        width: 300,
        child: UpListTile(
          title: "List Tile Title",
          titleWidget: UpText("List Tile Title widget"),
          trailing: Icon(
            Icons.lock_clock,
            color: Colors.red,
          ),
          trailingIcon: Icons.lock_open,
          leading: Icon(
            Icons.label_off,
            color: Colors.pink,
          ),
          leadingIcon: Icons.label,
        ),
      ),
    );
  }
}
