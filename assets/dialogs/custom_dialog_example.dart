import 'package:flutter/cupertino.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/dialogs/custom_dialog.dart';

class CustomDialogExample extends StatefulWidget {
  const CustomDialogExample({Key? key}) : super(key: key);

  @override
  State<CustomDialogExample> createState() => _CustomDialogExampleState();
}

class _CustomDialogExampleState extends State<CustomDialogExample> {
  String resultFromDialog = "";
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpButton(
            type: UpButtonType.elevated,
            onPressed: () async {
              String completerId = ServiceManager<UpDialogService>()
                  .showDialog(context, CustomDialog(), data: null);
              dynamic result = await ServiceManager<UpDialogService>()
                  .onDialogComplete(completerId);
              if (result != null) {
                setState(() {
                  resultFromDialog = "Success : ${result["success"]}";
                });
              }
            },
            text: "Custom dialog",
          ),
        ),
        Visibility(
          visible: resultFromDialog.isNotEmpty,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              children: [
                UpText(
                  resultFromDialog,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
