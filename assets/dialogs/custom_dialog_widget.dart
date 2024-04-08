import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_alert_dialog.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_text.dart';

class CustomDialogWidget extends StatelessWidget {
  final String completerId;
  const CustomDialogWidget({Key? key, required this.completerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UpAlertDialog(
      style: UpStyle(
        alertDialogBackgroundColor: UpConfig.of(context).theme.baseColor,
        alertDialogActionsPadding: const EdgeInsets.all(8),
        alertDialogTitlePadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        alertDialogContentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
      title: const UpText("Custom alert"),
      content: const SizedBox(
        height: 100,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: UpText("Custom alert message")),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UpButton(
            onPressed: () {
              ServiceManager<UpDialogService>().completeDialog(
                context: context,
                completerId: completerId,
                result: {
                  'success': true,
                },
              );
            },
            text: "Cancel",
          ),
        )
      ],
    );
  }
}
