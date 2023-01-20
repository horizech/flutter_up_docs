import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_text.dart';

class CustomDialogWidget extends StatelessWidget {
  final String completerId;
  const CustomDialogWidget({Key? key, required this.completerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: UpText("Custom alert"),
      actionsPadding: EdgeInsets.all(0),
      titlePadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      content: UpText("Custom alert message"),
    );
  }
}
