import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';

class UpExpansionTileExample extends StatelessWidget {
  const UpExpansionTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        child: UpExpansionTile(
          childrenPadding: EdgeInsets.all(8.0),
          title: "Example",
          leading: Icon(Icons.home),
          children: [
            Text('ex1'),
            Text('ex2'),
          ],
        ),
      ),
    );
  }
}
