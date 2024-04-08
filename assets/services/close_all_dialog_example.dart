import 'package:flutter/material.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';

showDialogExample(BuildContext context) {
  ServiceManager<UpDialogService>().closeAllDialogs(context);
}
