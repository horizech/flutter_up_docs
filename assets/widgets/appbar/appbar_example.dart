import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';

class UpAppBarExample extends StatelessWidget {
  const UpAppBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: UpScaffold(
        appBar: UpAppBar(
          title: 'AppBar Example',
        ),
      ),
    );
  }
}
