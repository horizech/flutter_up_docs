import 'package:flutter/cupertino.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up_docs/codes/dialogs/custom_dialog.dart';

class CustomDialogExample extends StatelessWidget {
  const CustomDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UpButton(
      buttonType: UpButtonType.elevated,
      onPress: () {
        ServiceManager<UpDialogService>()
            .showDialog(context, CustomDialog(), data: null);
      },
      child: const Text("Custom dialog"),
    );
  }
}
