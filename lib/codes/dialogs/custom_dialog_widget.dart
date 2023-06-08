import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/widgets/up_text.dart';

class CustomDialogWidget extends StatelessWidget {
  final String completerId;
  const CustomDialogWidget({Key? key, required this.completerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: UpConfig.of(context).theme.baseColor,
      title: const UpText("Custom alert"),
      actionsPadding: const EdgeInsets.all(0),
      titlePadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      content: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
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
      ),
    );
  }
}
