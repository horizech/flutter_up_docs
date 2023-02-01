import 'package:flutter/material.dart';
import 'package:flutter_up/dialogs/up_actions.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';
import 'package:flutter_up/widgets/up_button.dart';

class ActionDialogExample extends StatelessWidget {
  const ActionDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: UpButton(
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
        text: "Action Dialog",
      ),
    );
  }
}
