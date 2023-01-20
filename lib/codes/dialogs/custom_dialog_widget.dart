import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_text.dart';

class CustomDialogWidget extends StatelessWidget {
  final String completerId;
  const CustomDialogWidget({Key? key, required this.completerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const UpText("Custom alert"),
      actionsPadding: const EdgeInsets.all(0),
      titlePadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      content: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: UpText("Custom alert message"),
            ),
          ],
        ),
      ),
    );
  }
}
