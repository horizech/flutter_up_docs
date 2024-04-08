import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';

import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';

class UpAppBarColorTypeExample extends StatelessWidget {
  const UpAppBarColorTypeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        height: 50,
        child: UpScaffold(
          appBar: UpAppBar(
            colorType: UpColorType.success,
            title: 'AppBar',
          ),
        ),
      ),
    );
  }
}
