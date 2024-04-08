import 'package:flutter/material.dart';
import 'package:flutter_up/models/up_row.dart';
import 'package:flutter_up/widgets/up_table.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpTableExmaple extends StatelessWidget {
  const UpTableExmaple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 100,
            child: UpTable(
              onSelectChanged: (index) => {},
              showCheckboxColumn: false,
              columns: const ['Id', 'Name', "Color"],
              rows: [
                UpRow(
                  [
                    SizedBox(
                      child: UpText(1.toString()),
                    ),
                    const SizedBox(
                      child: UpText("Apple"),
                    ),
                    const SizedBox(
                      child: UpText("Red"),
                    ),
                  ],
                ),
                UpRow([
                  SizedBox(
                    child: UpText(2.toString()),
                  ),
                  const SizedBox(
                    child: UpText("Banana"),
                  ),
                  const SizedBox(
                    child: UpText("Yellow"),
                  ),
                ]),
                UpRow([
                  SizedBox(
                    child: UpText(3.toString()),
                  ),
                  const SizedBox(
                    child: UpText("Mango"),
                  ),
                  const SizedBox(
                    child: UpText("Yellow"),
                  ),
                ])
              ],
            ),
          ),
        )
      ],
    );
  }
}
