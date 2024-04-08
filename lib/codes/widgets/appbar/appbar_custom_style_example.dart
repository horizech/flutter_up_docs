import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';

class UpAppBarCustomStyleExample extends StatelessWidget {
  const UpAppBarCustomStyleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        height: 50,
        child: UpScaffold(
          appBar: UpAppBar(
            title: 'AppBar',
            showToggleButton: true,
            style: UpStyle(
              appBackgroundColor: Colors.red,
              appBarColor: const Color.fromARGB(255, 216, 181, 135),
              appBarHeight: 20,
              appBarShadowColor: Colors.green,
              appBarToggleIcon: Icons.toggle_off,
              appBarToggleIconColor: Colors.pink,
              appBarTitleColor: Colors.purple,
              appBarToggleIconSize: 14,
              appBarTitleSize: 14,
              appBarShape: Border.all(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
