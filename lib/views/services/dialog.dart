import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';

class DialogServiceView extends StatelessWidget {
  const DialogServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            UpText(
              style: UpStyle(textSize: 25),
              "Dialog Service",
            ),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: 'assets/dialog_service_example.dart',
              height: 1300,
            ),
          ],
        ),
      ),
    );
  }
}
