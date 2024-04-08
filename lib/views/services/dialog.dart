import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/views/services/initialize.dart';

class DialogServiceView extends StatelessWidget {
  const DialogServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String serviceName = "UpDialogService";

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ServiceIntializeWidget(serviceName: serviceName),
            UpText(
                "$serviceName has a method showDialog() which takes context, dialog widget, data as parameters.This method returns Completer ID."),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: ServiceAssest.showDialog,
              height: 420,
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
                "This service has a method completeDialog() which takes context, completerId and the result(you want to return from your dialog) as parameters.Like in the following example on close dialog success false will be return from the dialog."),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: ServiceAssest.completeDialog,
              height: 420,
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
                "This service has a method onCompleteDialog() which takes context and completerId(which is returned from showDialog) as a parameter.And returns the result which is returned from the dialog widget."),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: ServiceAssest.onCompleteDialog,
              height: 420,
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
                "This service has a method closeAllDialogs() which takes context as a parameter.This method will close all previously opened dialogs from stack."),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: ServiceAssest.closeAllDialog,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
