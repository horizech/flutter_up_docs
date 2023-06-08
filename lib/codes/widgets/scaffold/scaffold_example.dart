import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpScaffoldExample extends StatelessWidget {
  const UpScaffoldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const UpScaffold(
      appBar: UpAppBar(
        title: 'UpScaffoldExample',
      ),
      body: SizedBox(
        height: 100,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText("This is body"),
        ),
      ),
    );
  }
}
