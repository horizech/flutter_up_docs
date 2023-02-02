import 'package:flutter/cupertino.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';

class UpExpansionTileExample extends StatelessWidget {
  const UpExpansionTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: UpExpansionTile(
        title: "Example",
        children: [
          Text('ex1'),
          Text('ex2'),
        ],
      ),
    );
  }
}
