import 'package:flutter/material.dart';
import 'package:flutter_up/dialogs/up_about_app.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';
import 'package:flutter_up/widgets/up_button.dart';

class AboutDialogExample extends StatelessWidget {
  const AboutDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UpButton(
      onPressed: () {
        ServiceManager<UpDialogService>().showDialog(
            context, UpAboutAppDialog(),
            data: {'title': 'About us', 'text': 'All rights reserved.'});
      },
      text: "About Dialog",
    );
  }
}
