import 'package:flutter/material.dart';
import 'package:flutter_up/dialogs/up_info.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';
import 'package:flutter_up/widgets/up_button.dart';

class InfoDialogExample extends StatelessWidget {
  const InfoDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UpButton(
      onPressed: () {
        ServiceManager<UpDialogService>().showDialog(context, UpInfoDialog(),
            data: {'title': 'Error', 'text': 'Please fill all fields!'});
      },
      text: "Information Dialog",
    );
  }
}
