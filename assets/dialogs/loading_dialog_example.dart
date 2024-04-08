import 'package:flutter/material.dart';
import 'package:flutter_up/dialogs/up_loading.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';
import 'package:flutter_up/widgets/up_button.dart';

class LoadingDialogExample extends StatelessWidget {
  const LoadingDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: UpButton(
        onPressed: () {
          String loadingDialogCompleterId = ServiceManager<UpDialogService>()
              .showDialog(context, UpLoadingDialog(),
                  data: {'text': 'Logging in...'});
          Future.delayed(const Duration(seconds: 2), () {
            ServiceManager<UpDialogService>().completeDialog(
                context: context,
                completerId: loadingDialogCompleterId,
                result: null);
          });
        },
        text: "Loading Dialog",
      ),
    );
  }
}
