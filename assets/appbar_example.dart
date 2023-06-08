import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';

class UpAppbarExample extends StatelessWidget {
  const UpAppbarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const UpScaffold(
        appBar: UpAppBar(
      title: 'UpAppBarExample',
    ));
  }
}
