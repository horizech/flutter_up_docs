import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_orientational_column_row.dart';
import 'package:flutter_up/widgets/up_text.dart';

class OrientationalColumnRowExample extends StatelessWidget {
  const OrientationalColumnRowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: UpOrientationalColumnRow(
          widths: const [200, -1],
          children: [
            Container(
              height: 100,
              color: Colors.pink[200],
              child: const Center(child: UpText("container1")),
            ),
            Container(
              height: 100,
              color: Colors.blue[200],
              child: const Center(child: UpText("container2")),
            ),
          ],
        ),
      ),
    );
  }
}
