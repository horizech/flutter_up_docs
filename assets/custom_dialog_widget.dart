import 'package:flutter/material.dart';

class CustomDialogWidget extends StatelessWidget {
  final String completerId;
  const CustomDialogWidget({Key? key, required this.completerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text("Custom alert"),
      actionsPadding: EdgeInsets.all(0),
      titlePadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      content: Text("Custom alert message"),
    );
  }
}
