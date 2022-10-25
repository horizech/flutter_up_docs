import 'package:flutter/material.dart';
import 'package:flutter_up/dialogs/up_info.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';

class InfoDialogExample extends StatelessWidget {
  const InfoDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ServiceManager<UpDialogService>().showDialog(context, UpInfoDialog(),
            data: {'title': 'Error', 'text': 'Please fill all fields!'});
      },
      child: const Text("Information Dialog"),
    );
  }
}
