import 'package:flutter/material.dart';
import 'package:flutter_up/dialogs/up_base.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_dialog.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_text.dart';

showDialogExample(BuildContext context) {
  String completerId = ServiceManager<UpDialogService>()
      .showDialog(context, MyDialog(), data: null);
  debugPrint(completerId);
}

/// Example Dialog showing usage of UpBaseDialog to create custom dialogs
class MyDialog extends UpBaseDialog {
  @override
  void show(BuildContext context, String completerId, {dynamic data}) {
    showDialog(
      context: context,
      builder: (context) => MyWidget(
        completerId: completerId,
        document: const {'title': 'MyWidget'},
      ),
    );
  }
}

/// Example Widget
class MyWidget extends StatefulWidget {
  final String completerId;
  final dynamic document;
  const MyWidget({Key? key, required this.completerId, required this.document})
      : super(key: key);

  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: UpText(widget.document['title']),
      actionsPadding: const EdgeInsets.all(0),
      titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      contentPadding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      content: Container(),
      actions: <Widget>[
        UpButton(
          text: "Okay",
          onPressed: () {
            /// Okay pressed
          },
        ),
      ],
    );
  }
}
