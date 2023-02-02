import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';

class UpAppbarExample extends StatelessWidget {
  const UpAppbarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: UpAppBar(
      title: 'UpAppBarExample',
    ));
  }
}
