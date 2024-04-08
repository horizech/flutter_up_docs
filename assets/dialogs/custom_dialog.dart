import 'package:flutter/material.dart';
import 'package:flutter_up/dialogs/up_base.dart';
import 'package:flutter_up_docs/codes/dialogs/custom_dialog_widget.dart';

class CustomDialog extends UpBaseDialog {
  @override
  void show(BuildContext context, String completerId, {dynamic data}) {
    showDialog(
        context: context,
        builder: (context) => CustomDialogWidget(completerId: completerId));
  }
}
