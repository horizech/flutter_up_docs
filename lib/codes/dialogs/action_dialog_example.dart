import 'package:flutter/material.dart';
import 'package:flutter_up/dialogs/up_actions.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';

class ActionDialogExample extends StatelessWidget {
  const ActionDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ServiceManager<UpDialogService>()
            .showDialog(context, UpActionsDialog(), data: {
          'title': 'Delete',
          'text': "Are you sure you want to delete?",
          'actions': [
            {
              'text': 'Yes',
              'onPressed': () {},
            },
            {
              'text': 'No',
              'onPressed': () {},
            },
          ]
        });
      },
      child: const Text("Action Dialog"),
    );
  }
}
